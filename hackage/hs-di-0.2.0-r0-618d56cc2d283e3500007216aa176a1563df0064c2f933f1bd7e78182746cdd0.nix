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
      identifier = { name = "hs-di"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Milan Nagy";
      maintainer = "123.wizek@gmail.com";
      author = "Milan Nagy";
      homepage = "https://github.com/Wizek/hs-di#readme";
      url = "";
      synopsis = "Dependency Injection library for Haskell";
      description = "Dependency Injection library for Haskell to allow powerful unit testing and mocking (compile-time type-checked)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."compose-ltr" or (errorHandler.buildDepError "compose-ltr"))
          ];
        buildable = true;
        };
      tests = {
        "hs-di-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-di" or (errorHandler.buildDepError "hs-di"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."compose-ltr" or (errorHandler.buildDepError "compose-ltr"))
            ];
          buildable = true;
          };
        };
      };
    }