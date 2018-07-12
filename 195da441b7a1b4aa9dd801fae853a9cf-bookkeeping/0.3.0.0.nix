{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bookkeeping";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "2017 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/haskell-bookkeeping#readme";
        url = "";
        synopsis = "A module for bookkeeping by double entry.";
        description = "A module for bookkeeping by double entry. This module provides a way to do bookkeeping programmatically.";
        buildType = "Simple";
      };
      components = {
        "bookkeeping" = {
          depends  = [
            hsPkgs.base
            hsPkgs.dlist
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "bookkeeping-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bookkeeping
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
              hsPkgs.bookkeeping
            ];
          };
        };
      };
    }