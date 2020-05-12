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
      identifier = { name = "attoparsec-varword"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "2018 Concert Audio Technologies Ltd";
      maintainer = "paul@concertdaw.co.uk";
      author = "Paul Weaver";
      homepage = "https://github.com/concert/hs-varword#readme";
      url = "";
      synopsis = "Variable-length integer decoding for Attoparsec";
      description = "A collection of 'Data.Attoparsec.Parser's that decode integer types from\ncompact, variable-length representations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "attoparsec-varword-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec-varword" or (errorHandler.buildDepError "attoparsec-varword"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder-varword" or (errorHandler.buildDepError "bytestring-builder-varword"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }