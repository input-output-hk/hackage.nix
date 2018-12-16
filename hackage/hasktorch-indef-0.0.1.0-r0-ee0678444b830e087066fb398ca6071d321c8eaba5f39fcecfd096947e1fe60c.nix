{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cuda = false; };
    package = {
      specVersion = "2.2";
      identifier = {
        name = "hasktorch-indef";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Core Hasktorch abstractions wrapping FFI bindings";
      description = "The hasktorch-indef package constitutes the main user API for hasktorch. It uses backpack signatures to generically glue low-level FFI bindings to a high-level interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.backprop)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dimensions)
          (hsPkgs.hasktorch-signatures)
          (hsPkgs.hasktorch-signatures-support)
          (hsPkgs.hasktorch-types-th)
          (hsPkgs.hasktorch-ffi-th)
          (hsPkgs.managed)
          (hsPkgs.mtl)
          (hsPkgs.safe-exceptions)
          (hsPkgs.singletons)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optionals (flags.cuda) [
          (hsPkgs.hasktorch-types-thc)
          (hsPkgs.cuda)
        ];
      };
      sublibs = {
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-indef)
            (hsPkgs.hasktorch-signatures-partial)
          ];
        };
      };
      tests = {
        "spec-double-th" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.backprop)
            (hsPkgs.base)
            (hsPkgs.dimensions)
            (hsPkgs.ghc-typelits-natnormalise)
            (hsPkgs.hasktorch-indef-floating)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.singletons)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }