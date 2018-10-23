{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "hssqlppp";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009 Jake Wheat";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "https://launchpad.net/hssqlppp";
      url = "";
      synopsis = "Sql parser and type checker";
      description = "Sql parser, pretty printer and type checker, targets PostGreSQL SQL\nand PL/pgSQL, uses Parsec and UUAGC.\n\nOverview:\n\nsee the module 'Ast' for the ast types;\n\n'Parser' for converting text to asts;\n\n'PrettyPrinter' for converting asts to text;\n\n'AnnotateSource' for pretty printing annotations inline with original source;\n\n'Annotator' for annotating asts (this does the type checking);\nand working with annotated trees;\n\n'SqlTypes' for the data types which represent SQL types, the data\ntype for type errors, and some support functions;\n\n'Annotation' for the annotation data types and utilities, this\nalso contains the data types for SQL types;\n\n'Environment' to read a catalog from a database to type check against,\nor to generate catalog information;\n\n'DatabaseLoader' for the beginnings of a routine to load SQL into\na database (e.g. to generate an ast then load it into a database\nwithout loading it via psql). The loader just about does the job\nbut error handling is a bit crap at the moment.\n\nComes with a HUnit test suite which you can run using the\nHsSqlPppTests executable, and command line access to some\nfunctions via a exe called HsSqlSystem, run this file with no\narguments to get some help. See the project page\n<https://launchpad.net/hssqlppp> for more information and\ndocumentation links.";
      buildType = "Simple";
    };
    components = {
      "hssqlppp" = {
        depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.regex-posix)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.directory)
          ];
        };
        "HsSqlPppTests" = {
          depends  = [
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