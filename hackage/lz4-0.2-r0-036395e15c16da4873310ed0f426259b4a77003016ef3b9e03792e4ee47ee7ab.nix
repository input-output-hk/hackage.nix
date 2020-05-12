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
      identifier = { name = "lz4"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Mark Wotton, Austin Seipp 2012";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton <mwotton@gmail.com)";
      homepage = "http://github.com/mwotton/lz4hs";
      url = "";
      synopsis = "LZ4 compression for ByteStrings";
      description = "High level bindings to the LZ4 compression library.\n\nCurrently based on lz4 r75. C sources are included and no external\ndependencies are needed other than @cereal@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."lz4" or (errorHandler.buildDepError "lz4"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."lz4" or (errorHandler.buildDepError "lz4"))
            (hsPkgs."quicklz" or (errorHandler.buildDepError "quicklz"))
            (hsPkgs."snappy" or (errorHandler.buildDepError "snappy"))
            ];
          buildable = true;
          };
        };
      };
    }