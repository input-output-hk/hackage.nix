{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "obdd";
          version = "0.3.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann <waldmann@imn.htwk-leipzig.de>";
        author = "Johannes Waldmann";
        homepage = "";
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
          ];
        };
      };
    }