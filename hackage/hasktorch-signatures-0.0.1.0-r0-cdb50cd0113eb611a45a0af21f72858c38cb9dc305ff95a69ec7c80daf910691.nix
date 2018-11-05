{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = {
        name = "hasktorch-signatures";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Backpack signatures for Tensor operations";
      description = "Backpack signature files to glue FFI backends to Hasktorch";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hasktorch-types-th)
          (hsPkgs.hasktorch-types-thc)
          (hsPkgs.hasktorch-signatures-types)
        ];
      };
      sublibs = {
        "hasktorch-partial-floating" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-signatures-partial)
            (hsPkgs.hasktorch-signatures-support)
            (hsPkgs.hasktorch-signatures)
          ];
        };
        "hasktorch-partial-signed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-signatures-partial)
            (hsPkgs.hasktorch-signatures-support)
            (hsPkgs.hasktorch-signatures)
          ];
        };
        "hasktorch-partial-unsigned" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-signatures-partial)
            (hsPkgs.hasktorch-signatures-support)
            (hsPkgs.hasktorch-signatures)
          ];
        };
      };
      exes = {
        "isdefinite-unsigned-th" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.hasktorch-partial-unsigned)
          ];
        };
        "isdefinite-unsigned-thc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-ffi-thc)
            (hsPkgs.hasktorch-types-thc)
            (hsPkgs.hasktorch-partial-unsigned)
          ];
        };
        "isdefinite-signed-th" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.hasktorch-partial-signed)
          ];
        };
        "isdefinite-signed-thc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-ffi-thc)
            (hsPkgs.hasktorch-types-thc)
            (hsPkgs.hasktorch-partial-signed)
          ];
        };
        "isdefinite-floating-th" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-ffi-th)
            (hsPkgs.hasktorch-types-th)
            (hsPkgs.hasktorch-partial-floating)
          ];
        };
        "isdefinite-floating-thc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-ffi-thc)
            (hsPkgs.hasktorch-types-thc)
            (hsPkgs.hasktorch-partial-floating)
          ];
        };
      };
    };
  }