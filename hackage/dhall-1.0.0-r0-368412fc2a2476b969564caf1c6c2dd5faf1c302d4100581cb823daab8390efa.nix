{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "dhall";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "A configuration language guaranteed to terminate";
      description = "Dhall is an explicitly typed configuration language that is not Turing\ncomplete.  Despite being Turing incomplete, Dhall is a real programming\nlanguage with a type-checker and evaluator.\n\nUse this library to parse, type-check, evaluate, and pretty-print the Dhall\nconfiguration language.  This package also includes an executable which\ntype-checks a Dhall file and reduces the file to a fully evaluated normal\nform.\n\n\"Dhall.Core\" contains the core syntax tree and evaluator\n\n\"Dhall.Import\" contains logic for resolving remote file and URL references\n\n\"Dhall.TypeChecker\" contains the type-checker\n\n\"Dhall.Parser\" contains the parser\n\nRead \"Dhall.Tutorial\" to learn how to use this library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.parsers)
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
      };
    };
  }