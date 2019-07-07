{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { with-http = true; cross = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dhall"; version = "1.24.0"; };
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
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cborg)
          (hsPkgs.cborg-json)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.cryptonite)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.dotgen)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.lens-family-core)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.profunctors)
          (hsPkgs.repline)
          (hsPkgs.serialise)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optionals (flags.with-http) [
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          ]) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0") && !(compiler.isEta && (compiler.version).ge "0.8.4")) [
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.fail)
          ]) ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-xhr);
        };
      exes = { "dhall" = { depends = [ (hsPkgs.base) (hsPkgs.dhall) ]; }; };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cborg)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dhall)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.foldl)
            (hsPkgs.megaparsec)
            (hsPkgs.prettyprinter)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.serialise)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.vector)
            ];
          };
        "doctest" = {
          depends = [
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
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.dhall)
            ];
          };
        "dhall-command" = { depends = [ (hsPkgs.base) (hsPkgs.dhall) ]; };
        "map-operations" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.dhall) ];
          };
        };
      };
    }