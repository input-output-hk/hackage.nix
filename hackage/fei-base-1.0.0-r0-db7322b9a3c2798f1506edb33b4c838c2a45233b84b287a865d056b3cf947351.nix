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
    flags = { mxnet_geq_10600 = false; dummy = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "fei-base"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "";
      url = "";
      synopsis = "FFI to MXNet";
      description = "This package provides a FFI wrap of MXNet, including c-apis and symbol/array/executor operations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tuple-ops" or (errorHandler.buildDepError "tuple-ops"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
        ];
        libs = [ (pkgs."mxnet" or (errorHandler.sysDepError "mxnet")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "mxnet-op-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."tuple-ops" or (errorHandler.buildDepError "tuple-ops"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          ];
          libs = [ (pkgs."mxnet" or (errorHandler.sysDepError "mxnet")) ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
          buildable = true;
        };
      };
    };
  }