{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "EqualitySolver";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dillonhuff@gmail.com";
        author = "Dillon Huff";
        homepage = "";
        url = "";
        synopsis = "A theory solver for conjunctions of literals in the theory of uninterpreted functions with equality";
        description = "";
        buildType = "Simple";
      };
      components = {
        "EqualitySolver" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.containers
            hsPkgs.union-find-array
            hsPkgs.mtl
          ];
        };
      };
    }