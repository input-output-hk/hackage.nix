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
      specVersion = "1.4";
      identifier = { name = "textmatetags"; version = "0.0.1"; };
      license = "MIT";
      copyright = "(c) 2008 Utrecht University";
      maintainer = "Alessandro Vermeulen <alessandro.vermeulen@me.com>";
      author = "Alessandro Vermeulen";
      homepage = "-";
      url = "";
      synopsis = "A simple Haskell program to provide tags for Haskell code completion in TextMate";
      description = "A simple Haskell program to provide tags for Haskell code completion in TextMate";
      buildType = "Simple";
      };
    components = {
      exes = {
        "textmatetags" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }