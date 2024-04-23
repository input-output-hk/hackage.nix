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
      identifier = { name = "streamly-binary"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 G. Eyaeb";
      maintainer = "geyaeb@protonmail.com";
      author = "G. Eyaeb";
      homepage = "https://sr.ht/~geyaeb/streamly-binary/";
      url = "";
      synopsis = "Integration of streamly and binary";
      description = "Support for encoding/decoding using @binary@ in @streamly@ streams.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
        ];
        buildable = true;
      };
      tests = {
        "streamly-binary-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-binary" or (errorHandler.buildDepError "streamly-binary"))
          ];
          buildable = true;
        };
      };
    };
  }