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
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "submark"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2017 Hong Minhee";
      maintainer = "hong.minhee@gmail.com";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/submark#readme";
      url = "";
      synopsis = "Extract a part from CommonMark/Markdown docs";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "submark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."submark" or (errorHandler.buildDepError "submark"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."submark" or (errorHandler.buildDepError "submark"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }