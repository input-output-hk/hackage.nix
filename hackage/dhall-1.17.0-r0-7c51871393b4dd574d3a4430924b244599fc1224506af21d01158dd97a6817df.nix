{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { with-http = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dhall";
        version = "1.17.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "A configuration language guaranteed to terminate";
      description = "Dhall is an explicitly typed configuration language that is not Turing\ncomplete.  Despite being Turing incomplete, Dhall is a real programming\nlanguage with a type-checker and evaluator.\n\nUse this library to parse, type-check, evaluate, and pretty-print the Dhall\nconfiguration language.  This package also includes an executable which\ntype-checks a Dhall file and reduces the file to a fully evaluated normal\nform.\n\nRead \"Dhall.Tutorial\" to learn how to use this library";
      buildType = "Simple";
    };
    components = {
      "dhall" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cborg)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.cryptonite)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.haskeline)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens-family-core)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.repline)
          (hsPkgs.serialise)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optionals (flags.with-http) [
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
        ]) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "dhall" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
          ];
        };
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dhall)
            (hsPkgs.hashable)
            (hsPkgs.insert-ordered-containers)
            (hsPkgs.prettyprinter)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.serialise)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mockery)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "dhall-parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.dhall)
            (hsPkgs.directory)
            (hsPkgs.serialise)
            (hsPkgs.text)
          ];
        };
        "deep-nested-large-record" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.dhall)
          ];
        };
      };
    };
  }