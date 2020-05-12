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
      identifier = { name = "quickcheck-arbitrary-adt"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Plow Technologies";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme";
      url = "";
      synopsis = "Generic typeclasses for generating arbitrary ADTs";
      description = "Improve arbitrary value generation for ADTs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }