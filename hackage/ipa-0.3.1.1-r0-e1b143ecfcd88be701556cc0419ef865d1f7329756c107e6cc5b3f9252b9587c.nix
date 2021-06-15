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
      specVersion = "2.4";
      identifier = { name = "ipa"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Rory Tyler Hayford, 2021";
      maintainer = "rory.hayford@protonmail.com";
      author = "Rory Tyler Hayford";
      homepage = "https://gitlab.com/ngua/ipa-hs/-/blob/master/README.org";
      url = "";
      synopsis = "Internal Phonetic Alphabet (IPA)";
      description = "See the README at https://gitlab.com/ngua/ipa-hs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
          ];
        buildable = true;
        };
      tests = {
        "ipa-testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ipa" or (errorHandler.buildDepError "ipa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }