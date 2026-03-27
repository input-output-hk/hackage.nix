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
      specVersion = "3.0";
      identifier = { name = "snappy-hs"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "https://github.com/mchav/snappy-hs";
      url = "";
      synopsis = "Snappy compression library.";
      description = "A pure Haskell implementation of the Snappy compression spec.";
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
      exes = {
        "snappy-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."snappy-hs" or (errorHandler.buildDepError "snappy-hs"))
          ];
          buildable = true;
        };
        "snappy-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."snappy-hs" or (errorHandler.buildDepError "snappy-hs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "snappy-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."snappy-hs" or (errorHandler.buildDepError "snappy-hs"))
          ];
          buildable = true;
        };
      };
    };
  }