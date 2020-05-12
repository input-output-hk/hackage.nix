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
      identifier = { name = "hspec-golden-aeson"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Plow Technologies";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/hspec-golden-aeson#readme";
      url = "";
      synopsis = "Use tests to monitor changes in Aeson serialization";
      description = "Use tests to monitor changes in Aeson serialization";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }