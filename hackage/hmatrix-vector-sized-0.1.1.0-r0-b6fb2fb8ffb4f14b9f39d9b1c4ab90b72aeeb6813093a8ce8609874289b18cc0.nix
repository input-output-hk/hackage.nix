{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-vector-sized"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hmatrix-vector-sized#readme";
      url = "";
      synopsis = "Conversions between hmatrix and vector-sized types";
      description = "Conversions between statically sized types in hmatrix and vector-sized.\n\nSee README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
          (hsPkgs.vector-sized)
          ];
        };
      tests = {
        "hmatrix-vector-sized-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-typelits-knownnat)
            (hsPkgs.hedgehog)
            (hsPkgs.hmatrix)
            (hsPkgs.hmatrix-vector-sized)
            (hsPkgs.vector)
            (hsPkgs.vector-sized)
            ];
          };
        };
      };
    }