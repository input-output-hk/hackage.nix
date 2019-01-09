{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hssqlppp"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009 Jake Wheat";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "https://launchpad.net/hssqlppp";
      url = "";
      synopsis = "Sql parser and type checker";
      description = "Sql parser, pretty printer and type checker, targets PostGreSQL SQL\nand PL/pgSQL, uses Parsec and UUAGC.\nOverview:\nsee the module 'Database.HsSqlPpp.TypeChecking.Ast' for the ast types;\n'Parser' for converting text to asts;\n'PrettyPrinter' for converting asts to text;\n'TypeChecker' for annotating asts (this does the\ntype checking), and working with annotated trees;\n'Scope' to read a catalog from a database to type check against, or\nto generate catalog information;\n'DatabaseLoader' for the beginnings of a routine\nto load SQL into a database (e.g. to generate\nan ast then load it into a database without\nloading it via psql). The loader just about\ndoes the job but error handling is a bit crap\nat the moment.\nComes with a HUnit test suite which you can run using the HsSqlPppTests\nexecutable, and command line access to some functions via a exe called\nHsSqlSystem. See the project page <https://launchpad.net/hssqlppp>\nfor more information and documentation links.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.regex-posix)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.directory)
          ];
        };
      exes = {
        "HsSqlSystem" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.regex-posix)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.directory)
            ];
          };
        "HsSqlPppTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.regex-posix)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }