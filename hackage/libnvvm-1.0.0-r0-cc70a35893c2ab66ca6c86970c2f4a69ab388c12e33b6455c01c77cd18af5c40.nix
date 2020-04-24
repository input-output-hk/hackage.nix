{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          ];
        libs = [ (pkgs."nvvm" or ((hsPkgs.pkgs-errors).sysDepError "nvvm")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test-simple" = {
          depends = [
            (hsPkgs."libnvvm" or ((hsPkgs.pkgs-errors).buildDepError "libnvvm"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }