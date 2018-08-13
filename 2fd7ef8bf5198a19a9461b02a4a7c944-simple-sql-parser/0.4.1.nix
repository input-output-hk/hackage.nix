{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      sqlindent = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple-sql-parser";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright Jake Wheat 2013, 2014";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "http://jakewheat.github.io/simple-sql-parser/";
      url = "";
      synopsis = "A parser for SQL queries";
      description = "A parser for SQL queries. Parses most SQL:2011\nqueries. Please see the homepage for more information\n<http://jakewheat.github.io/simple-sql-parser/>.";
      buildType = "Simple";
    };
    components = {
      "simple-sql-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "SQLIndent" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
          ];
        };
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }