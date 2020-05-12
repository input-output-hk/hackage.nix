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
      identifier = { name = "hoogle-index"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "Ben Gamari <ben@smart-cactus.org>";
      author = "Ben Gamari <ben@smart-cactus.org>";
      homepage = "http://github.com/bgamari/hoogle-index";
      url = "";
      synopsis = "Easily generate Hoogle indices for installed packages";
      description = "'hoogle-index' is a small utility for generating indicies for local\nHoogle installations.\n\n> \$ cabal install hoogle hoogle-index\n> \$ hoogle-index    # this will take a while\n\nYour Hoogle index now covers all of the packages locally installed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoogle-index" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
            ];
          buildable = true;
          };
        };
      };
    }