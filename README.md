# Getting Started

THis is an end-to-end tesing project for 

## Set up dependencies
#### Setup Virtual Env
```
$ python -m venv env
```
For Python 3.X.X
```
$ python3 -m venv env
```
#### Activate virtual environment
For MACOS or Linux
```
$ source env/bin/activate
```
For Windows
```
$ .\env\Scripts\activate
```
#### Install dependencies in the virtual environment
```
$ pip install -r requirements.txt
```
For Python 3.X.X
```
$ pip3 install -r requirements.txt
```

## Set up Chromedriver for testing on chrome
Download [Chromedriver](https://chromedriver.chromium.org/downloads)

For Windows users
```
$ set PATH=%PATH%;C:\path\to\chromedriver
```

For MACOS or Linux users
```
$ export PATH="$PATH:/path/to/chromedriver"
```

## How to run
```
robot e2e_tests
```

## My Opinion About Robot Framework AND Cucumber
I think it's have different approach, Robot is mainly aim for User Stories Requirements but Cucumber mainly aim for Bussiness Requirements.
If I have to really choose one for end to end testing, I will definitely go with Robot Framework.

## More Information
Read more [About Browser Driver](https://www.selenium.dev/documentation/getting_started/installing_browser_drivers/)
<br />
[Robot Framework Navigation](https://mobilelabs.in/how-to-navigate-in-robot-framework/)
<br />
[Robot Framework Cheat Sheet](https://dev.to/rubnvaz/robot-framework-cheat-sheet-3b17)