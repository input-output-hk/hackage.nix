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
      specVersion = "1.10";
      identifier = {
        name = "hmatrix-backprop";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hmatrix-backprop#readme";
      url = "";
      synopsis = "hmatrix operations lifted for backprop";
      description = "hmatrix operations lifted for backprop.\n\nMeant to act as a drop-in replacement to the API of\nNumeric.LinearAlgebra.Static.  Just change your imports, and your\nfunctions are automatically backpropagatable.\n\nSee README on Github at <https://github.com/mstksg/hmatrix-backprop#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ANum)
          (hsPkgs.backprop)
          (hsPkgs.base)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-vector-sized)
          (hsPkgs.microlens)
          (hsPkgs.vector)
          (hsPkgs.vector-sized)
        ];
      };
      tests = {
        "hmatrix-backprop-test" = {
          depends = [
            (hsPkgs.backprop)
            (hsPkgs.base)
            (hsPkgs.finite-typelits)
            (hsPkgs.hedgehog)
            (hsPkgs.hmatrix)
            (hsPkgs.hmatrix-backprop)
            (hsPkgs.hmatrix-vector-sized)
            (hsPkgs.microlens)
            (hsPkgs.microlens-platform)
            (hsPkgs.vector-sized)
          ];
        };
      };
    };
  }