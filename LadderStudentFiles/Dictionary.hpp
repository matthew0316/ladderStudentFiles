//
// Created by Ali A. Kooshesh on 2020-01-19.
//

#ifndef GENERALBACKBONEPROGRAMS_DICTIONARY_HPP
#define GENERALBACKBONEPROGRAMS_DICTIONARY_HPP

#include<iostream>
#include<fstream>
#include<vector>
#include<tuple>
#include<stack>
#include<string>

using namespace std;

class Dictionary {
public:
    Dictionary(string inputFileName);
    int size();  // number of words in the dictionary
    vector<string> pathFromTo(string from, string to);
    // member returns the index of "word" in "words"
    // if "word" is not a member of the dictionary, it
    // returns size(). See comments for idxOfSuccessorWordFrom
    // to learn how you would use the index that this function returns.
    int member(string word);
    void printDictionary();
    vector<string> neighborsOf(string someWord);

    // positionalDiff calculates and returns the number of positions
    // where its two arguments differ. For example, it will return
    // 2 if bell and bowl were passed to it (e and o; l and w).
    int positionalDiff(string word1, string word2);

    // This function finds a successor word for "word" in
    // dictionary starting at index "fromIdx". If there is
    // no successor for "word" starting at "fromIdx", the
    // function returns size(), the number of words in the dictionary.
    // usage:
    // int idx = idxOfSuccessorWordFrom("bell", 5);
    // if( idx == size() ) {
    //     there was not a successor word for "bell" starting with
    //     words[5]
    // } else {
    //     words[idx] is a successor for "bell".
    // }
    int idxOfSuccessorWordFrom(string word, int fromIdx);
    bool insideVector(vector<string> theVec, string word);

    void resetPath(); // this function sets all elements of array "used" to false.

    ~Dictionary();

private:
    vector<string> words;
    vector<bool> used;
    vector<string> ladderFromTo;
    stack< tuple<string, int> > ladder;
    string startWord, targetWord;
    ifstream dictionaryStream;  // use it to open the input file.

    void printLadder();
    bool insideVector();
};


#endif //GENERALBACKBONEPROGRAMS_DICTIONARY_HPP
