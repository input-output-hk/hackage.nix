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
      identifier = { name = "webshow"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/chrisdone/webshow#readme";
      url = "";
      synopsis = "Show programming language printed values in a web UI";
      description = "Show programming language printed values in a web UI. Supports Haskell Show values only at the moment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "webshow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            ];
          buildable = true;
          };
        };
      };
    }