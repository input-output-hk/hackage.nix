let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."Pipe" or (buildDepError "Pipe"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          ];
        };
      exes = {
        "HsSqlSystem" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        };
      };
    }