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
      identifier = { name = "serial-test-generators"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Scott <scottmurphy09@gmail.com>";
      author = "Scott <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Test your 'Aeson' 'Serialize' and 'Binary' instances for stability over time";
      description = "When I am programming haskell I write a lot of\n@\ninstance ToJSON ... where\ninstance FromJSON ... where\ninstance Binary ... where\n@\nThese libraries are often associated with state.\nSo, I end up writing a lot of tests of the form ...\n>>> expect (encode someTestAeson) `toBe` \"{\\\"someSerializedThing\\\":\\\"expected encoding\\\"}\nso I have to write all these pieces down... but what I would really like is\n>>> runAesonSerializeTest someTestAeson outputfile.txt\nThat is what these libraries do for Serialize, Binary and Aeson\nThey make very little assumption about what version of the library you are using.";
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