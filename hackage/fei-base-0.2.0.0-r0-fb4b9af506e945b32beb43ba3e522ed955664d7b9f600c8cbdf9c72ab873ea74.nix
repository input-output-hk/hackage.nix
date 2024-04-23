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
    flags = {
      mxnet_1_5 = true;
      mxnet_1_4 = false;
      mxnet_1_3 = false;
      mxnet_1_0 = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "fei-base"; version = "0.2.0.0"; };
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
          (hsPkgs."c2hs-extra" or (errorHandler.buildDepError "c2hs-extra"))
          (hsPkgs."tuple-ops" or (errorHandler.buildDepError "tuple-ops"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
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
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
          ];
          libs = [ (pkgs."mxnet" or (errorHandler.sysDepError "mxnet")) ];
          buildable = true;
        };
      };
    };
  }