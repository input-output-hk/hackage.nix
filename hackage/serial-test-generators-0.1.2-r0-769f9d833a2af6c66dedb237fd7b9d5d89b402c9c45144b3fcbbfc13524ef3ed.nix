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
      identifier = { name = "serial-test-generators"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Scott <scottmurphy09@gmail.com>";
      author = "Scott <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Test your 'Aeson' 'Serialize' and 'Binary' instances for stability over time";
      description = "When I am programming haskell I write a lot of getter setter serialization tests\nfor aeson, binary, cereal\nThese libraries are often associated with state.\nThis library standardizes those tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            ];
          buildable = true;
          };
        };
      };
    }