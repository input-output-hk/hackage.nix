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
      identifier = {
        name = "bytestring-builder-varword";
        version = "0.1.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "2018 Concert Audio Technologies Ltd";
      maintainer = "paul@concertdaw.co.uk";
      author = "Paul Weaver";
      homepage = "https://github.com/concert/hs-varword#readme";
      url = "";
      synopsis = "Variable-length integer encoding";
      description = "A collection of functions for producing 'Data.ByteString.Builder.Builder's\nthat encode integer types into compact, variable-length representations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "bytestring-builder-varword-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring-builder-varword" or (errorHandler.buildDepError "bytestring-builder-varword"))
            (hsPkgs."attoparsec-varword" or (errorHandler.buildDepError "attoparsec-varword"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }