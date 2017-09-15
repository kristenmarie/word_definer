# _Word Definer_

#### _A Ruby web application, 9.15.2017_

#### By _**Kristen Marie Kulha**_

## Description

_This simple web application allows users to create a list of words. After more than one word has been created, user can click sort button at any time to update their list so that it is in alphabetical order. When the user clicks on a word it takes them to that words definition page. On the definition page user can add multiple definitions for the word using a form. When the go back to my words button is clicked the user is returned to the landing page with their list of words. When there are more than 2 words in list, random word button appears that routes to random word definition page on click._

## Specifications

* Creates instance of word with word class when given word, with initially no definitions.
  * Example input: "villain"
  * Example output: "villain"
* Saves each word in a list of words.
  * Example input: word.save() word2.save()
  * Example output: [word, word2]
* Word class can return list of all saved words.
  * Example input: Word.all()
  * Example output: ["villain", "hero"]
* User can add definition to words
  * Example input: villain.definition("a character whose evil actions or motives are important to the plot")
  * Example output: villain.definition = ["a character whose evil actions or motives are important to the plot"]
* Can find word in list of words when given the word
  * Example input: "villain".find_word
  * Example output: villain
* Sort array of words in alphabetical order
  * Example input: [zebra, apple, orange, pickle]
  * Example output: [apple, orange, pickle, zebra]
* Can call random on Word class to receive random word from array of words
  * Example input: Word.random()
  * Example output: zebra


## Setup/Installation Requirements

* _Clone or Download this GitHub Repository_
* _In terminal, open word_definer directory_
* _In word_definer directory run: ```ruby app.rb```_
* _Open web browser of choice_
* _In web browsers address field enter http://localhost:4567/ __
* _Or Simply visit [this page](https://peaceful-falls-24422.herokuapp.com/ )


## Known Bugs

_There are no know bugs at this time._

## Support and contact details

_Feel free to contact me at kristen.m.kulha@gmail.com_

## Technologies Used

_Ruby, Sinatra, HTML, CSS_

### License

*This software is licensed under the MIT license*

Copyright (c) 2017 **_Kristen Marie Kulha_**
