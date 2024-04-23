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
    flags = { standalone = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-zstd"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-present, Facebook, Inc. All rights reserved.; 2019 Luis Pedro Coelho";
      maintainer = "luis@luispedro.org";
      author = "Bryan O'Sullivan";
      homepage = "https://github.com/facebookexperimental/hs-zstd";
      url = "";
      synopsis = "Haskell bindings to the Zstandard compression algorithm";
      description = "A fast lossless compression algorithm, targeting real-time\ncompression scenarios at zlib-level and better compression ratios.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        libs = pkgs.lib.optional (!flags.standalone) (pkgs."zstd" or (errorHandler.sysDepError "zstd"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."hs-zstd" or (errorHandler.buildDepError "hs-zstd"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hs-zstd" or (errorHandler.buildDepError "hs-zstd"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }