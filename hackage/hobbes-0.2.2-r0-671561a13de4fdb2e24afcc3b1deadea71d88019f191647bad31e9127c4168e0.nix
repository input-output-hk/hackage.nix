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
      identifier = { name = "hobbes"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://github.com/jhickner/hobbes";
      url = "";
      synopsis = "A small file watcher for OSX";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hobbes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }