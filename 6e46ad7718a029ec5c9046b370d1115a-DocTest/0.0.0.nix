{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "DocTest";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "simon.hengel@web.de";
        author = "Simon Hengel";
        homepage = "";
        url = "";
        synopsis = "Test interactive Haskell examples";
        description = "DocTest checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).";
        buildType = "Simple";
      };
      components = {
        exes = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.parsec
              hsPkgs.haskell-src
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.plugins
            ];
          };
        };
      };
    }