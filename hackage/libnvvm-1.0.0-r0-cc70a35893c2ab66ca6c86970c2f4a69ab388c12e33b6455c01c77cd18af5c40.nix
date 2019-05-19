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
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.cuda) ];
        libs = [ (pkgs."nvvm") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      tests = {
        "test-simple" = {
          depends = [
            (hsPkgs.libnvvm)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.Cabal)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }