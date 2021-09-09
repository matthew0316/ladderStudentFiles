//
// Created by Ali A. Kooshesh on 2020-01-20.
//

#include<iostream>
#include<string>

using namespace std;

#include "Dictionary.hpp"

vector<tuple<string, string>> readStartTargetWords(const string &inputFileName) {
    ifstream ladderStream;
    string word1, word2;

    ladderStream.open(inputFileName, ios_base::in);
    if( ! ladderStream.is_open()) {
        //cout << "Unable to open the input file ->" << inputFileName << "<- that contains pairs of words.\n";
        exit(2);
    }
    //cout << "Successfully opened " << inputFileName << std::endl;
    vector<tuple<string, string>> startTargetVector;

    // while there are input lines, do:
    //     read the pair of words into variables, word1, word2
    //     startTargetVector.push_back(make_tuple(word1, word2));
    // end-while

    while(ladderStream >> word1){

        ladderStream >> word2;

        startTargetVector.push_back(make_tuple(word1, word2));

    }

    // Just so you see how this works, let's add two arbitrary words.
    // string bell = "bell", ball = "ball";
    // startTargetVector.push_back(make_tuple(bell, ball));
    return startTargetVector;
}

int main(int argc, char *argv[]) { // the main function.

    if( argc != 3 ) {
        //cout << "usage: " << argv[0] << " inputFileNameThatContainsDictionary inputFileNameThatContainsPairsOfWords\n";
        exit(1);
    }

    ifstream dictionaryStream;
    dictionaryStream.open(argv[1], ios_base::in);
    if( ! dictionaryStream.is_open()) {
        //cout << "Unable to open input file ->" << argv[1] << "<-\n";
        exit(2);
    }
    //cout << "Successfully opened " << argv[1] << endl;
    // we just wanted to make sure that the input file exists. So, close it
    // and let the instance of Dictionary open and use it.
    dictionaryStream.close();

    Dictionary dictionary(argv[1]);
    auto arrayOfPairsToBuildLadders = readStartTargetWords(argv[2]);
    for(const auto & [startWord, targetWord]: arrayOfPairsToBuildLadders) {
        //cout << "start word is " << startWord << "; target word is " << targetWord << endl;
    }

    //dictionary.printDictionary();

    int idx = dictionary.idxOfSuccessorWordFrom("call", 3);
    if(idx == dictionary.size()){
        //cout << "there is no successor word for: call" << endl;
    }
    else {
        //cout << endl << "there is a successor at idx: " << idx << endl << endl;
    }

    auto neighbors = dictionary.neighborsOf("fate");
    for( auto neighbor: neighbors ){
        //std::cout << "neighbor: " << neighbor << std::endl;
    }

    vector<string> ladder;

    for(const auto & [startWord, targetWord]: arrayOfPairsToBuildLadders) {
        ladder = dictionary.pathFromTo(startWord, targetWord);
        if(ladder.empty()){
            cout << "No ladder for the pair " << startWord << " and " << targetWord << " exists." << endl;
        }
        else{
            cout << "A ladder for the pair " << startWord << " and " << targetWord << " is:" << endl;
            for(int i = 0; i < ladder.size(); i++){
                cout << ladder.at(i) << endl;
            }
            cout << endl;
        }
        dictionary.resetPath();
    }

    return 0;
}
