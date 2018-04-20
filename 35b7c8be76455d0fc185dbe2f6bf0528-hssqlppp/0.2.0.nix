{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "hssqlppp";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2010 Jake Wheat";
        maintainer = "jakewheatmail@gmail.com";
        author = "Jake Wheat";
        homepage = "https://launchpad.net/hssqlppp";
        url = "";
        synopsis = "Sql parser and type checker";
        description = "Sql parser, pretty printer and type checker, targets PostgreSQL SQL\nand PL/pgSQL.\n\nSee the project page\n<https://launchpad.net/hssqlppp> for more information and\ndocumentation links, there are also links to some example usage\nfiles there.\n\nQuick module guide:\n\n'Ast' - ast types;\n\n'Parser' - converting strings to asts;\n\n'PrettyPrinter' - converting asts to strings containing valid SQL;\n\n'TypeChecker' - type checking and annotating asts and working\nwith annotated trees;\n\n'SqlTypes' - the data types which represent SQL types, the data\ntype for type errors, and some support functions;\n\n'Annotation' - the annotation data types and utilities;\n\n'Catalog' - read a catalog from a database to type check against,\nor to generate catalog information.\n\nAlso comes with command line access to some functions via a exe called\nHsSqlSystem, run this file with no arguments to get some help.";
        buildType = "Simple";
      };
      components = {
        hssqlppp = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.regex-posix
            hsPkgs.HDBC
            hsPkgs.HDBC-postgresql
            hsPkgs.directory
            hsPkgs.syb
            hsPkgs.uniplate
            hsPkgs.pretty-show
            hsPkgs.Pipe
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.template-haskell
            hsPkgs.haskell-src-exts
          ];
        };
        exes = {
          HsSqlSystem = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.regex-posix
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.directory
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }