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
      specVersion = "3.4";
      identifier = { name = "quantex"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2026 d3z";
      maintainer = "d3z.the.dev@gmail.com";
      author = "d3z";
      homepage = "https://github.com/d3z-the-dev/quantex";
      url = "";
      synopsis = "NIST post-quantum cryptography: ML-KEM, ML-DSA, SLH-DSA, X-Wing";
      description = "Type-safe bindings to vendored C reference implementations (mlkem-native,\nmldsa-native, slhdsa-c, Monocypher) of the NIST post-quantum standards:\nML-KEM (FIPS 203), ML-DSA (FIPS 204), SLH-DSA (FIPS 205), and the X-Wing\nhybrid KEM.\nPure @Either@-based API, phantom-typed keys, deterministic seed-based\nvariants, zeroizing secret storage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."quantex".components.sublibs.quantex-internal or (errorHandler.buildDepError "quantex:quantex-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "quantex-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          libs = pkgs.lib.optional (system.isWindows) (pkgs."bcrypt" or (errorHandler.sysDepError "bcrypt"));
          buildable = true;
        };
      };
      tests = {
        "quantex-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quantex" or (errorHandler.buildDepError "quantex"))
            (hsPkgs."quantex".components.sublibs.quantex-internal or (errorHandler.buildDepError "quantex:quantex-internal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "quantex-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quantex" or (errorHandler.buildDepError "quantex"))
            (hsPkgs."quantex".components.sublibs.quantex-internal or (errorHandler.buildDepError "quantex:quantex-internal"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }