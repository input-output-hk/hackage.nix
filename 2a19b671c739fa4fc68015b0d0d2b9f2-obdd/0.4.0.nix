{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "obdd";
          version = "0.4.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "https://github.com/jwaldmann/haskell-obdd";
        url = "";
        synopsis = "Ordered Reduced Binary Decision Diagrams";
        description = "Construct, combine and query OBDDs;\nan efficient representation for formulas in propositional logic";
        buildType = "Simple";
      };
      components = {
        obdd = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.process
          ];
        };
        tests = {
          obdd-placement = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-queens = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-queens2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-sort = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
        };
      };
    }