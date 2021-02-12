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
      specVersion = "1.18";
      identifier = { name = "libnvvm"; version = "1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2012-2014 NVIDIA Corporation.  All rights reserved.";
      maintainer = "Sean Lee <selee@nvidia.com>";
      author = "Sean Lee,\nTrevor McDonell";
      homepage = "https://github.com/nvidia-compiler-sdk/hsnvvm";
      url = "";
      synopsis = "FFI binding to libNVVM, a compiler SDK component from NVIDIA";
      description = "FFI binding to libNVVM, a compiler SDK component from NVIDIA";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          ];
        libs = [ (pkgs."nvvm" or (errorHandler.sysDepError "nvvm")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test-simple" = {
          depends = [
            (hsPkgs."libnvvm" or (errorHandler.buildDepError "libnvvm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }