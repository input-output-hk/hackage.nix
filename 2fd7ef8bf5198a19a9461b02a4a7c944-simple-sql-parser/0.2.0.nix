{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-sql-parser";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright Jake Wheat 2013";
        maintainer = "jakewheatmail@gmail.com";
        author = "Jake Wheat";
        homepage = "http://jakewheat.github.io/simple-sql-parser/";
        url = "";
        synopsis = "A parser for SQL queries";
        description = "A parser for SQL queries. Please see the homepage for more information <http://jakewheat.github.io/simple-sql-parser/>.";
        buildType = "Simple";
      };
      components = {
        simple-sql-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.haskell-src-exts
          ];
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.haskell-src-exts
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }