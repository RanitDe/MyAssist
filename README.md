# MyAssist
<br/>
<p align="center">
  <a href="https://github.com/ShaanCoding/ReadME-Generator">
    <img src="https://raw.githubusercontent.com/rupajsen/MyAssist/main/MyAssist/Assets.xcassets/appicon%20(1).png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">MyAssist</h3>

  <p align="center">
    An Awesome Assistant App to clear all your doubts!
    <br/>

## Table Of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Installation](#installation)
* [Usage](#usage)
* [Authors](#authors)

## About The Project
  
In this project we had to make an Assistant app with the help of OpenAI API. This app consists of an Search Bar at the bottom of the screen and returns the answer in the main view.

## Video Demo
  
https://user-images.githubusercontent.com/89799310/230320498-66eb5846-6235-4252-b45d-841c0bce51d7.mov

## Built With

This app is made by integrating OpenAI API. It is made in Xcode with SwiftUI. 

->The OpenAISwift library is used to interface with the OpenAI API, enabling the app to retrieve answers to questions asked by the user.

-> The code follows the Model-View-ViewModel (MVVM) architecture pattern, which separates the user interface (View) from the business logic (ViewModel) and the data (Model) for easier maintenance, testing, and extensibility.

-> The ProgressView component is used to display a spinning indicator while the app is waiting for the OpenAI API to return an answer.

External Package imported : OpenAISwift.


## Getting Started

To get started with this app first ensure you are running a maOS device with Xcode installed in it.

### Installation

1. Get a free API Key at [https://platform.openai.com/account/api-keys]

2. Clone the repo

```sh
git clone https://github.com/rupajsen/MyAssist
```

3. Enter your API in `ContentView.swift`

```
let openAI = OpenAISwift(authToken: " Enter the API Key ")
```

## Usage

This is basically a chatbot which generates output using the OpenAI API. It has many use cases in this case I made an assistant app. It can be implemented with many such projects. Assistant app is one of the application of OpenAI.

For more info refer to :[https://openai.com/blog/openai-api]





## Authors

* **Rupaj Sen** - *CSE Student at SRM University* - [Rupaj Sen](https://github.com/rupajsen) 


