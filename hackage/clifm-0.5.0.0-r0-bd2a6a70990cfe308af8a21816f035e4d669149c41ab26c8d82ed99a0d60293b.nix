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
      specVersion = "1.10";
      identifier = { name = "clifm"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pasqu4le@gmail.com";
      author = "pasqu4le";
      homepage = "https://github.com/pasqu4le/clifm";
      url = "";
      synopsis = "Command Line Interface File Manager";
      description = "A terminal-based File Manager with multiple panes/tabs interface, basic file operations and mouse support.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clifm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
            (hsPkgs."byteunits" or (errorHandler.buildDepError "byteunits"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }