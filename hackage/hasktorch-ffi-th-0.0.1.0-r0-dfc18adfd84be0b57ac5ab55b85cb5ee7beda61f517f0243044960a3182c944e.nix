{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { half = false; lite = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-ffi-th"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Bindings to Torch";
      description = "Torch (and THNN) FFI bindings for CPU-based tensors and neural networks in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hasktorch-types-th)
          (hsPkgs.inline-c)
          (hsPkgs.text)
          ];
        libs = [ (pkgs."ATen") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.hasktorch-ffi-tests)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.hspec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }