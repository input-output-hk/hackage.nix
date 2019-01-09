{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cuda = false; lite = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Torch for tensors and neural networks in Haskell";
      description = "Hasktorch is a library for tensors and neural networks in Haskell. It is an independent open source community project which leverages the core C libraries shared by Torch and PyTorch. This library leverages @cabal v2-build@ and @backpack@. *Note that this project is in early development and should only be used by contributing developers. Expect substantial changes to the library API as it evolves. Contributions and PRs are welcome (see details on github).*";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dimensions)
          (hsPkgs.safe-exceptions)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.hasktorch-cpu)
          (hsPkgs.hasktorch-ffi-th)
          (hsPkgs.hasktorch-types-th)
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs.hasktorch-gpu);
        };
      sublibs = {
        "hasktorch-cpu" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.dimensions)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.safe-exceptions)
            (hsPkgs.singletons)
            (hsPkgs.text)
            (hsPkgs.hasktorch-indef-floating)
            (hsPkgs.hasktorch-indef-signed)
            ] ++ (pkgs.lib).optional (!flags.lite) (hsPkgs.hasktorch-indef-unsigned);
          };
        "hasktorch-gpu" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.dimensions)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.safe-exceptions)
            (hsPkgs.singletons)
            (hsPkgs.text)
            (hsPkgs.hasktorch-indef-floating)
            (hsPkgs.hasktorch-indef-signed)
            (hsPkgs.hasktorch-ffi-thc)
            (hsPkgs.hasktorch-types-thc)
            ] ++ (pkgs.lib).optional (!flags.lite) (hsPkgs.hasktorch-indef-unsigned);
          };
        "hasktorch-indef-unsigned" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-signatures-partial)
            (hsPkgs.hasktorch-indef)
            ];
          };
        "hasktorch-indef-signed" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-signatures-partial)
            (hsPkgs.hasktorch-indef)
            ];
          };
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-indef)
            (hsPkgs.hasktorch-signatures-partial)
            ];
          };
        };
      exes = {
        "isdefinite-cpu" = {
          depends = [ (hsPkgs.base) (hsPkgs.hasktorch-cpu) ];
          };
        "isdefinite-gpu" = {
          depends = [ (hsPkgs.base) (hsPkgs.hasktorch-gpu) ];
          };
        "isdefinite" = { depends = [ (hsPkgs.base) (hsPkgs.hasktorch) ]; };
        "memcheck" = { depends = [ (hsPkgs.base) (hsPkgs.hasktorch) ]; };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.backprop)
            (hsPkgs.base)
            (hsPkgs.dimensions)
            (hsPkgs.ghc-typelits-natnormalise)
            (hsPkgs.hasktorch)
            (hsPkgs.hspec)
            (hsPkgs.singletons)
            (hsPkgs.mtl)
            (hsPkgs.microlens-platform)
            (hsPkgs.monad-loops)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.generic-lens)
            ];
          };
        };
      };
    }