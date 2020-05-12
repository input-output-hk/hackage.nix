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
      identifier = { name = "sunroof-examples"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 The University of Kansas";
      maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
      author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
      homepage = "https://github.com/ku-fpg/sunroof-examples";
      url = "";
      synopsis = "Tests for Sunroof";
      description = "Example applications of the sunroof-compiler and sunroof-server package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sunroof-browser-info" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (errorHandler.buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (errorHandler.buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        "sunroof-canvas" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (errorHandler.buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (errorHandler.buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        "sunroof-clock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (errorHandler.buildDepError "sunroof-compiler"))
            (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "sunroof-fib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sunroof-compiler" or (errorHandler.buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (errorHandler.buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        "sunroof-unit" = {
          depends = [
            (hsPkgs."sunroof-compiler" or (errorHandler.buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or (errorHandler.buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        "sunroof-inplace-shaker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            ];
          buildable = true;
          };
        };
      };
    }