# _Word Definer_

#### _A Ruby web application, 9.15.2017_

#### By _**Kristen Marie Kulha**_

## Description

_This simple web application allows users to create a list of words. After more than one word has been created, user can click sort button at any time to update their list so that it is in alphabetical order. When the user clicks on a word it takes them to that words definition page. On the definition page user can add multiple definitions for the word using a form. When the go back to my words button is clicked the user is returned to the landing page with their list of words._

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

## Setup/Installation Requirements

* _This is a great place_
* _to list setup instructions_
* _in a simple_
* _easy-to-understand_
* _format_

_{Leave nothing to chance! You want it to be easy for potential users, employers and collaborators to run your app. Do I need to run a server? How should I set up my databases? Is there other code this app depends on?}_

## Known Bugs

_There are no know bugs at this time._

## Support and contact details

_Feel free to contact me at kristen.m.kulha@gmail.com_

## Technologies Used

_Ruby, Sinatra, HTML, CSS_

### License

*This software is licensed under the MIT license*

Copyright (c) 2017 **_Kristen Marie Kulha_**
