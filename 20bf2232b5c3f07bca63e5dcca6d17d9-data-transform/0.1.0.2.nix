{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-transform";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Jonas Scholl";
        maintainer = "jonas.scholl@gmx.de";
        author = "Jonas Scholl";
        homepage = "";
        url = "";
        synopsis = "Functions to transform data structures.";
        description = "This library provides a simple way to transform parts of\ncomplex data structures. It is based on Data.Data.";
        buildType = "Simple";
      };
      components = {
        data-transform = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }