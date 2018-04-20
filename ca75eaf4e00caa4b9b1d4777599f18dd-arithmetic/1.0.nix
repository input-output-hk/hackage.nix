{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "arithmetic";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Natural number arithmetic";
        description = "This package implements a library of natural number arithmetic functions,\nincluding Montgomery multiplication.";
        buildType = "Simple";
      };
      components = {
        arithmetic = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
            hsPkgs.opentheory
            hsPkgs.opentheory-bits
            hsPkgs.opentheory-divides
          ];
        };
        exes = {
          arithmetic = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory
              hsPkgs.opentheory-bits
              hsPkgs.opentheory-divides
            ];
          };
        };
        tests = {
          arithmetic-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory
              hsPkgs.opentheory-bits
              hsPkgs.opentheory-divides
            ];
          };
        };
      };
    }