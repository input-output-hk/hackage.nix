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
      specVersion = "1.12";
      identifier = { name = "wakame"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Hideaki Kawai";
      maintainer = "kayhide@gmail.com";
      author = "Hideaki Kawai";
      homepage = "https://github.com/kayhide/wakame#readme";
      url = "";
      synopsis = "Functions to manipulate records";
      description = "Please see the README on GitHub at <https://github.com/kayhide/wakame>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          ];
        buildable = true;
        };
      tests = {
        "wakame-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."wakame" or (errorHandler.buildDepError "wakame"))
            ];
          buildable = true;
          };
        "wakame-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wakame" or (errorHandler.buildDepError "wakame"))
            ];
          buildable = true;
          };
        "wakame-tasty" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."wakame" or (errorHandler.buildDepError "wakame"))
            ];
          buildable = true;
          };
        };
      };
    }