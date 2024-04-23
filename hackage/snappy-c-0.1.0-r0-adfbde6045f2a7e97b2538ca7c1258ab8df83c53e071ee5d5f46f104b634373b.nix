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
      identifier = { name = "snappy-c"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "finley@well-typed.com";
      author = "Finley McIlwaine, Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Bindings to Google's Snappy: A fast compression library";
      description = "[Snappy](https://github.com/google/snappy) is a fast\n(de)compression library. It is written in C++, but a basic\nset of C bindings is also provided. Although the C bindings\nonly support the \"raw\" Snappy format, this package provides\nsupport for the Snappy \"frame\" format on top of the raw C\nAPI, enabling extremely fast (de)compression of lazy\n(streamed) data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [ (pkgs."snappy" or (errorHandler.sysDepError "snappy")) ];
        buildable = true;
      };
      exes = {
        "snappy-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snappy-c" or (errorHandler.buildDepError "snappy-c"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-snappy-c" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snappy-c" or (errorHandler.buildDepError "snappy-c"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-snappy-c" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snappy-c" or (errorHandler.buildDepError "snappy-c"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."snappy-lazy" or (errorHandler.buildDepError "snappy-lazy"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }