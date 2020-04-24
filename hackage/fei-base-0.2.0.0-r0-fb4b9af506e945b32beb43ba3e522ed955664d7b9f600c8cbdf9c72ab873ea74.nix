{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."c2hs-extra" or ((hsPkgs.pkgs-errors).buildDepError "c2hs-extra"))
          (hsPkgs."tuple-ops" or ((hsPkgs.pkgs-errors).buildDepError "tuple-ops"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          ];
        libs = [ (pkgs."mxnet" or ((hsPkgs.pkgs-errors).sysDepError "mxnet")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "mxnet-op-gen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            ];
          libs = [
            (pkgs."mxnet" or ((hsPkgs.pkgs-errors).sysDepError "mxnet"))
            ];
          buildable = true;
          };
        };
      };
    }