# Marvel Characters!

### This App is part of an interview I did for a company. Below is a list of requirements for the App, with everything I did and dind't do.

## What sets this project apart from the others?

### Infinite Scroll (pagination - level 3 requirement)
- In order to see the next characters in the list, the user doesn't need to click any buttons, they will load automatically once the user gets to the end of the list.
- This behaviour is expected from modern applications.
- This was done without the use of additional external packages.

### Favorites
- It wasn't asked, but it makes sense for an app that shows such a long list of characters.

## First Steps:
:heavy_check_mark: Create a developer account at `developer.marvel.com`.

:heavy_check_mark: Get an **API key** at the website.

## **Suggestions:**
:heavy_check_mark: Don't use a single commit for all the App.

:heavy_check_mark: Use separate branches for each level, and merge with PRs.

:heavy_check_mark: Be creative.

## LEVEL 1 -  branch (level_1):
:heavy_check_mark: First steps;

:heavy_check_mark: Show a list of characters (with name and image);
>- It is implied that the characters must have come from the API

:heavy_check_mark: Redirect to a Character Details Page when a card gets clicked (name, image and description);


## LEVEL 2 - branch (level_2):
:x: Cache the API results;

:heavy_check_mark: Create a filter for the list;

:heavy_check_mark: Redirect to a Character Details Page when a card gets clicked (name, image, description, :x: and related characters);


## LEVEL 3:

:x: Create a custom Splashscreen;

:x: Clear cache when the App gets closed;

:heavy_check_mark: Implement <b>pagination</b> for the list;


## Extras:
:heavy_check_mark: Use Getx.

:x: Configure Firebase crashlytics.

:x: Create a kotlin channel, capture connection changes, show a message when offline.
