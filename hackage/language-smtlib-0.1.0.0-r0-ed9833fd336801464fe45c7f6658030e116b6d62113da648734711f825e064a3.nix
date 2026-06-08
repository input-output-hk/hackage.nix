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
    flags = { conformance = false; profiling = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "language-smtlib"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/language-smtlib#readme";
      url = "";
      synopsis = "Parsing, printing and incremental I/O for the SMT-LIB 2 format";
      description = "A @Text@-based library for parsing, printing, and incrementally streaming the SMT-LIB 2.7 format.\n\nIt provides a parametric, fully-annotated AST in which every node carries an optional source-span annotation; a megaparsec-based parser with both whole-text and incremental (S-expression framing) entry points, suitable for solver pipes and REPLs; and a prettyprinter-based printer that guarantees @parse . render == id@ for well-formed trees.\n\nSee the README at <https://github.com/msakai/language-smtlib#readme> for details and examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "language-smtlib-conformance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."language-smtlib" or (errorHandler.buildDepError "language-smtlib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.conformance then false else true;
        };
        "language-smtlib-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-smtlib" or (errorHandler.buildDepError "language-smtlib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "language-smtlib-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."language-smtlib" or (errorHandler.buildDepError "language-smtlib"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }