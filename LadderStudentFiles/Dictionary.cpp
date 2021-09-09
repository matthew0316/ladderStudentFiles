//
// Created by Ali A. Kooshesh on 2020-01-19.
//

#include <iostream>
#include <fstream>
#include "Dictionary.hpp"

using namespace std;

Dictionary::Dictionary(string inputFileName) {
    string value;
    // open inputFileName and store its contents, which is a collection of
    // words, one per line, in vector, "words".
    //cout << "Creating an instance of Dictionary with input file: " << inputFileName << endl;

    dictionaryStream.open(inputFileName);

    while(dictionaryStream >> value){

        words.push_back(value);
        used.push_back(false);
    }

    dictionaryStream.close();
}

Dictionary::~Dictionary() {
    // close the input stream if it was successfully opened.
    if(dictionaryStream.is_open())
        dictionaryStream.close();
}

void Dictionary::printDictionary() {
    for(int i = 0; i < words.size(); i++){
        cout << words.at(i) << endl;
    }
}

int Dictionary::size() {
    return words.size();
}

int Dictionary::member(string word) {
    for(int i = 0; i < words.size(); i++){
        if(words.at(i) == word){
            return i;
        }
    }
    return words.size();
}

int Dictionary::positionalDiff(string word1, string word2) {
    int sumOfDifferences = 0;

    for(int i = 0; i < word1.size(); i++){
        if(word1.at(i) != word2.at(i)){
            sumOfDifferences += 1;
        }
    }

    return sumOfDifferences;
}

int Dictionary::idxOfSuccessorWordFrom(string word, int fromIdx) {

    for(int i = fromIdx; i < words.size(); i++){
        if(positionalDiff(word, words.at(i)) == 1 && used.at(i) == false) {
            return i;
        }
    }

    return words.size();
}

vector<string> Dictionary::neighborsOf(string someWord) {
    vector<string> neighborWords;

    for(int i = 0; i < words.size(); i++){
        if(positionalDiff(words.at(i), someWord) == 1){
            neighborWords.push_back(words.at(i));
        }
    }

    return neighborWords;
}

void Dictionary::resetPath() {

    for(int i = 0; i < used.size(); i++){
        used.at(i) = false;
    }
    while(!(ladder.empty())){
        ladder.pop();
    }

    ladderFromTo.erase(ladderFromTo.begin(), ladderFromTo.end());

}

vector<string> Dictionary::pathFromTo(string from, string to) {

    string fromParam = from;

    while(positionalDiff(fromParam, to) != 0){

        int fromIdx = member(fromParam); // the index of FROM in dictionary
        int successorIdx = idxOfSuccessorWordFrom(fromParam, 0); // the first successor found in the dictionary

        if(!(insideVector(ladderFromTo, fromParam))){
            ladderFromTo.push_back(fromParam);
            ladder.push(make_tuple(fromParam, fromIdx));
        }

        used.at(fromIdx) = true;

        if(successorIdx == words.size()){
            ladder.pop();
            ladderFromTo.erase(ladderFromTo.begin() + (ladderFromTo.size() - 1));
            if(ladder.empty()){
                return ladderFromTo;
            }
            else{
                fromParam = get<0>(ladder.top());
            }
        }
        else{
            string successor = words.at(successorIdx);
            fromParam = successor;
        }
        if(ladder.empty()){
            return ladderFromTo;
        }

    }

    ladderFromTo.push_back(fromParam);
    ladder.push(make_tuple(fromParam, member(fromParam)));
    used.at(member(fromParam)) = true;

   return ladderFromTo;
}

bool Dictionary::insideVector(vector<string> theVec, string word) {

    for(int i = 0; i < theVec.size(); i++){
        if(theVec.at(i) == word){
            return true;
        }
    }

    return false;
}


