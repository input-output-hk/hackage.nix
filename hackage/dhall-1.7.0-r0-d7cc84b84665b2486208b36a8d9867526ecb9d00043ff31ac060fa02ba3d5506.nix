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
        version = "1.7.0";
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
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.charset)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.lens)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
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
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
        "dhall-format" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.prettyprinter)
            (hsPkgs.system-filepath)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dhall)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }