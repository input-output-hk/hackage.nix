{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Commando"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "lyndon@sordina.net";
      author = "Lyndon Maydwell";
      homepage = "https://github.com/sordina/Commando";
      url = "";
      synopsis = "Watch some files; Rerun a command";
      description = "Commando comes in two forms - A library and an executable.\n\n* Executable\n\nWatch a directory, and when changes occur, run a command.\n\nFrom the commandline the program is used like so:\n\n> commando -c echo\n\nThis will watch the current directory, and when an event occurs, pass the serialized\nrepresentation of the event as an argument to `echo`.\n\n* Library\n\nTo use the library just\n\n> import System.Commando\n\nSee the \"System.Commando\" module documentation for more details.\n\nThe Commando executable module is a good example of using Commando as a library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
      exes = {
        "commando" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
          buildable = true;
        };
      };
    };
  }