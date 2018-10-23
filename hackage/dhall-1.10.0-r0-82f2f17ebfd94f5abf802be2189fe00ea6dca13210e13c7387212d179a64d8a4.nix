{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "dhall";
        version = "1.10.0";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens-family-core)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "dhall" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
        "dhall-repl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.repline)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.text)
            (hsPkgs.trifecta)
          ];
        };
        "dhall-format" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
        "dhall-hash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.dhall)
            (hsPkgs.insert-ordered-containers)
            (hsPkgs.prettyprinter)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }