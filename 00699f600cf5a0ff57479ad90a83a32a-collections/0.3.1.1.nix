{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "collections";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "NONE";
        author = "Jean-Philippe Bernardy, Adrian Hey and others (see AUTHORS file)";
        homepage = "";
        url = "";
        synopsis = "Useful standard collections types and related functions.";
        description = "NOTE: This package is currently NOT MAINTAINED. If you are interested in a class-framework for collections (no implementations of special instances) checkthe package collections-api.\nThis package provides a suite of data structures types, with a consistent API.\nIt is intended as an evolution of the data structures in the @base@ package.";
        buildType = "Simple";
      };
      components = {
        "collections" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.bytestring
          ];
        };
      };
    }