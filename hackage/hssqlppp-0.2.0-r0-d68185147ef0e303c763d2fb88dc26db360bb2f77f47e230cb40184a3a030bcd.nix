{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hssqlppp"; version = "0.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."Pipe" or (errorHandler.buildDepError "Pipe"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      exes = {
        "HsSqlSystem" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }