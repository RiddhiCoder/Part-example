# Part-example
A small example of a website using [Part](https://github.com/budde377/Part). Notice that while the example is in english, the default language of the system is danish which might cause some confusion. You may see this as a splendid change for lerning a new language, create an issue in the Part repository on multi-language support, or fork the project and provide your own translation.

## Installation 

Installing the example on a linix machine (Ubuntu) can be done by

1. Clone this repo `git clone git@github.com:budde377/Part-example.git`
2. Update the `site-config.xml` file (e.g. with database, log, and temp-folder-info) 
3. Run setup `setup.sh`
 
## Running

While it is highly recommended to run this site with apache, it can be run with the built-in PHP server on `localhost` port `8080` with the command: `php -S localhost:8080 -t www routing.php` from the base-dir of the project.

