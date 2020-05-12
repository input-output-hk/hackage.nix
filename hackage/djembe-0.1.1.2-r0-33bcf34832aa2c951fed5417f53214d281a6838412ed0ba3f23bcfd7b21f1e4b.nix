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
      identifier = { name = "djembe"; version = "0.1.1.2"; };
      license = "MIT";
      copyright = "2015 Reed Rosenbluth";
      maintainer = "Reed.Rosenbluth@gmail.com";
      author = "Reed Rosenbluth & Jonathan Dubin";
      homepage = "https://github.com/reedrosenbluth/Djembe";
      url = "";
      synopsis = "Hit drums with haskell           ";
      description = "A simple DSL for composing drum beats in haskell.\nDjembe uses the system MIDI device to play these beats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hmidi" or (errorHandler.buildDepError "hmidi"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "djembe-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."djembe" or (errorHandler.buildDepError "djembe"))
            ];
          buildable = true;
          };
        };
      };
    }