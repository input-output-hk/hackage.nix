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
      identifier = { name = "servant-aeson-specs"; version = "0.5.1.0"; };
      license = "MIT";
      copyright = "Plow Technologies";
      maintainer = "soenkehahn@gmail.com, mchaver@gmail.com";
      author = "Sönke Hahn, James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/servant-aeson-specs#readme";
      url = "";
      synopsis = "generic tests for aeson serialization in servant";
      description = "tests for aeson serialization in servant";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
          (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."mockery" or (errorHandler.buildDepError "mockery"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."quickcheck-arbitrary-adt" or (errorHandler.buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
            ];
          buildable = true;
          };
        };
      };
    }