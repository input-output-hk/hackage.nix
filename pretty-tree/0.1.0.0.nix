{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pretty-tree";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Pretty-print trees";
        description = "Alternative pretty-printing functions for Data.Tree.";
        buildType = "Simple";
      };
      components = {
        pretty-tree = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.boxes
          ];
        };
      };
    }