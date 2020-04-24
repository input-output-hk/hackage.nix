{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "dhall"; version = "1.13.0"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."insert-ordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "insert-ordered-containers"))
          (hsPkgs."lens-family-core" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-core"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      exes = {
        "dhall" = {
          depends = [
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "dhall-repl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."repline" or ((hsPkgs.pkgs-errors).buildDepError "repline"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "dhall-format" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "dhall-hash" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."insert-ordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "insert-ordered-containers"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }