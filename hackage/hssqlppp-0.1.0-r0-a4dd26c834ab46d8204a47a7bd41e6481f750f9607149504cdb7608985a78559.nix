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
      identifier = { name = "hssqlppp"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009 Jake Wheat";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "https://launchpad.net/hssqlppp";
      url = "";
      synopsis = "Sql parser and type checker";
      description = "Sql parser, pretty printer and type checker, targets PostgreSQL SQL\nand PL/pgSQL, uses Parsec and UUAGC.\n\nOverview:\n\nsee the module 'Ast' for the ast types;\n\n'Parser' for converting text to asts;\n\n'PrettyPrinter' for converting asts to text;\n\n'AnnotateSource' for pretty printing annotations inline with original source;\n\n'TypeChecker' for type checking and annotating asts and working\nwith annotated trees;\n\n'SqlTypes' for the data types which represent SQL types, the data\ntype for type errors, and some support functions;\n\n'Annotation' for the annotation data types and utilities;\n\n'Environment' to read a catalog from a database to type check against,\nor to generate catalog information;\n\n'DatabaseLoader' for the beginnings of a routine to load SQL into\na database (e.g. to generate an ast then load it into a database\nwithout loading it via psql). The loader just about does the job\nbut error handling is a bit crap at the moment.\n\n'CommandComponents' for the component functions used in the HsSqlSystem\nexe.\n\n'ChaosExtensions' for the experimental plpgsql syntax extensions.\n\nComes with command line access to some\nfunctions via a exe called HsSqlSystem, run this file with no\narguments to get some help. Has a HUnit test suite which you can\nrun using the HsSqlSystem executable. for the time being you can\nlook at the source of this command to see what it can do:\n\n<http://bazaar.launchpad.net/~jakewheat/hssqlppp/trunk/annotate/head:/HsSqlSystem.lhs>\n\nSee the project page\n<https://launchpad.net/hssqlppp> for more information and\ndocumentation links.\n\nThe test files for parsing and for type checking contain examples\nof what parses/ typechecks and what the asts and annotations look\nlike:\n\n<http://bazaar.launchpad.net/~jakewheat/hssqlppp/trunk/annotate/head:/Database/HsSqlPpp/Tests/ParserTests.lhs>\n\n<http://bazaar.launchpad.net/~jakewheat/hssqlppp/trunk/annotate/head:/Database/HsSqlPpp/Tests/TypeCheckTests.lhs>";
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