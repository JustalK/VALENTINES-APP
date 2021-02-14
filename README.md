# My Sweet Diane

What is the best way to say you love someone for a developer ? Creating an app ! Yes, I created an entire app for the valentine day because I know for sure nobody never gave that to my wife. It's unique and represent the developer that I am so well. For also making some personal improvement, I decided to use a new technology that I did not nothing about `Flutter`. I learnt everything I could about `Dart` and `Flutter` in a month.

For publishing to app store and google play, I use the `Codemagic` CI/CD hook. I connected my repository to it.

![Codemagic](https://api.codemagic.io/apps/6027ec49ede2fecaeca2f136/6027ec49ede2fecaeca2f135/status_badge.svg)

![Alt text](documentation/app/1.png?raw=true "My Sweet Diane 1")
![Alt text](documentation/app/2.png?raw=true "My Sweet Diane 2")
![Alt text](documentation/app/3.png?raw=true "My Sweet Diane 3")

## Plan of the presentation

I explain with all the details how I build the project and my way of working.

1. [ERD](#erd)
2. [Organization](#organization)
3. [Stories](#stories)
4. [Running](#running)
4. [Build](#build)

## Organization

The following describe how the project is structured. It's an easy way for discovering the project and the way I organize the code.

#### Flowchart

![Alt text](documentation/flowchart/flowchart.png?raw=true "My Sweet Diane Flowchart")

#### Organization of the global folder

| Folder's Name | Description of the folder                               |
| :------------ | :------------------------------------------------------ |
| android       | Everything related to the android compilation           |
| ios           | Everything related to the ios compilation               |
| documentation | Everything related to the documentations                |
| assets        | Regroup the images and files used in the app            |
| lib           | Regroup the source code                                 |
| test          | Regroup the test                                        |

#### Organization of the libs folder

| Folder's Name | Description of the folder                               |
| :------------ | :------------------------------------------------------ |
| components    | Regroup the reusable components                         |
| pages         | Regroup the differents screen of the app                |
| podos         | Regroup the objet PO                                    |
| utils         | Regroup the utils function (loader)                     |

## Stories

#### Roles

| Role's name             | Functions                                                                          |
| :---------------------- | :--------------------------------------------------------------------------------- |
| User (My Wife <3)       | An user will see all the content                                                   |

#### User stories V1

| As...           | I want...                                            | So that...                                                   |
| :-------------- | :--------------------------------------------------- | :----------------------------------------------------------- |
| User            | I want to see the history of your story              | So that I can have discover the event of your life           |
| User            | I want to see your best moments                      | So that I can see what matter the most                       |

## Running

Connect your phone to the computer and run the debugger at the root of the project.

## Build

For building the app for google-store or an APK :

```
flutter build apk
flutter build appbundle
```

For building the icon of the app, I use `flutter_launcher_icons` and generate everything with the command below :

```
flutter pub pub run flutter_launcher_icons:main
```

For removing the build, in case you want to clean the project :

```
flutter clean
```

## License

MIT - Copyright &copy; [JUSTAL Kevin](http://justalk.online/)
