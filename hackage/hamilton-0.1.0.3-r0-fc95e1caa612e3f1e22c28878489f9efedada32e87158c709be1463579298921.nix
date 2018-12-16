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
        name = "hamilton";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hamilton#readme";
      url = "";
      synopsis = "Physics on generalized coordinate systems using Hamiltonian Mechanics and AD";
      description = "See README.md (or read online at <https://github.com/mstksg/hamilton#readme>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ad)
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.hmatrix-vector-sized)
          (hsPkgs.typelits-witnesses)
          (hsPkgs.vector-sized)
        ];
      };
      exes = {
        "hamilton-examples" = {
          depends = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.finite-typelits)
            (hsPkgs.ghc-typelits-knownnat)
            (hsPkgs.hamilton)
            (hsPkgs.hmatrix)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
            (hsPkgs.vector-sized)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }