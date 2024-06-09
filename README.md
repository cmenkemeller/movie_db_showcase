# Equifax Movie DB

## Running instructions
1. Create file 'api-keys.json' in project root
- Add following code with your own API key
    ```
    {
        "TMDB_KEY": "[YOUR API KEY HERE]"
    }
    ```
2. Use .vscode launch for proper run commands or run the following command in your terminal
    ```
    flutter run --dart-define-from-file api-keys.json
    ```
3. You can switch language between English and Spanish by changing the localization code in `main.dart`

```
LocaleSettings.setLocal(AppLocale.es);
```

## What I would have done with more time
1. Normally I would write tests as I develop a feature, instead of writing all tests at the end.
2. Clean up the cache initialization process (the MovieDatabaseApp is messier than I would like)
3. Error handling. I avoided error handling for the api calls. There are great ways to do it with Dio interceptors but I did not want to take the time to implement for this short project.
4. Create a proper widget library
5. Create proper constants for UI (padding, text styles, radii, etc...) and add them to MaterialTheme via Theme Extensions


## Credits
This project was created from scratch by Cardin Menkemeller.

## Problem
You want to have an application that allows:
- Get a list of movies or tv series sorted by popularity and rating
- Access to the details of the Movie or TV series.
- Optional: Search series by name

## Visual Reference
[Link to Figma Design](https://www.figma.com/file/wXMC1ReUbKP3mdMHeR0D9t/MovieDB-(Community)?type=design&node-id=34-75&mode=design)

## Data
Please use the API exposed on: [The Movie Database API](https://developers.themoviedb.org/)

## Requirements
- The app should work offline (optional)
- The project should implement unit tests
- (Optional) Include animations or transitions between elements. The implementation is up to the candidate, however, some ideas are:
    - Between the list of elements and the details of each one of them.
    - In either the list or the details when scrolling down.

## Limitations
- [ ] Dart/Flutter language must be used
- [ ] There is no restriction on external libraries.
- [ ] The App must be scalable, so apply any good practice you know.
- [ ] Use some architectural patterns.
- [ ] Inject dependencies. If any better library is used.
- [ ] Detail how you would do everything that you have not completed in the project's README.md.

## Deliverables
1. A Link to a private repository in Github, please send invitations to:
     - alberto.marturelo@equifax.com
     - mario.espinoza@equifax.com
     - anil.mugalapalli@equifax.com

Repository must contain:
- A Readme file, with details of the implementation, assumptions made and scripts or a step by step guide to run the application in either iOS or Android. If needed, specify the target platform.
- Source Code

# Steps in creation
1. Create new Flutter Project
2. Determine end points
    - Obtain API Key from themoviedb
    - Using Swagger for API documentation
3. Create data classes based on responses
    - Using Freezed for to/from json and equality generation
4. Create api client using Dio, Retrofit
    - Provide client to project using flutter_bloc package's RepositoryProvider
    - Use environmental variables for api key access, passed in at runtime
5. Add Routing
    - Using go_router package
6. Add caching/offline support
    - Using Dio Cache Interceptor and Hive
    - Forcing cache


