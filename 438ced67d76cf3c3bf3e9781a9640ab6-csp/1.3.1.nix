{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "csp";
          version = "1.3.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Andrei Barbu <andrei@0xab.com>";
        author = "Andrei Barbu <andrei@0xab.com>";
        homepage = "";
        url = "";
        synopsis = "Discrete constraint satisfaction problem (CSP) solver.";
        description = "Constraint satisfaction problem (CSP) solvers";
        buildType = "Simple";
      };
      components = {
        "csp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.nondeterminism
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.nondeterminism
              hsPkgs.csp
            ];
          };
        };
      };
    }