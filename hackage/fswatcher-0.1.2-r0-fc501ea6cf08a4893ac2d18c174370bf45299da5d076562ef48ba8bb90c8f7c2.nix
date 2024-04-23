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
      specVersion = "1.6";
      identifier = { name = "fswatcher"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ehamberg@gmail.com";
      author = "Erlend Hamberg";
      homepage = "http://www.github.com/ehamberg/fswatcher/";
      url = "";
      synopsis = "Watch a file/directory and run a command when it's modified";
      description = "A simple program that watches a file or a directory and\nruns a given command whenever the file or a file within the\ndirectory is changed.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fswatcher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }