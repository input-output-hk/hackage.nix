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
      identifier = { name = "quickcheck-assertions"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uymanov";
      homepage = "https://github.com/s9gf4ult/quickcheck-assertions";
      url = "";
      synopsis = "HUnit like assertions for QuickCheck";
      description = "Library with convenient assertions for QuickCheck properties like in HUnit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-assertions" or (errorHandler.buildDepError "quickcheck-assertions"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            ];
          buildable = true;
          };
        };
      };
    }