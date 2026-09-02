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
      specVersion = "2.2";
      identifier = { name = "peg-matching"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Guilherme Drummond, Rodrigo Ribeiro";
      maintainer = "Rodrigo Ribeiro <rodrigo.ribeiro@ufop.edu.br>";
      author = "Guilherme Drummond";
      homepage = "https://github.com/lives-group/peg-matching#readme";
      url = "";
      synopsis = "Syntax tree matching and rewriting with Parsing Expression Grammars";
      description = "@peg-matching@ is a library for parsing, analysing, matching and rewriting\nsyntax trees using Parsing Expression Grammars (PEGs) together with a\ndedicated pattern language. It is aimed at research and experimentation\nwith syntax-driven transformations over abstract syntax trees.\n\nThe library provides:\n\n* PEG grammars and their syntax trees (\"Syntax.Peg\", \"Syntax.ParsedTree\");\n\n* parsers for grammars, patterns and inputs (\"Parser.Peg\", \"Parser.Pattern\",\n\"Parser.ParsedTree\");\n\n* semantic validation, including left-recursion and duplicate-rule detection\n(\"Semantic.Peg\", \"Semantic.Pattern\");\n\n* pattern matching with subtree capture and tree rewriting (\"Match.Capture\",\n\"Match.Rewrite\");\n\n* quasi-quoters for embedding grammars and patterns in Haskell source\n(\"Quote.Peg\", \"Quote.Pattern\");\n\n* a high-level pipeline tying it all together (\"Pipeline.MatchPipeline\").\n\nSee the README for a worked example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "peg-matching-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."peg-matching" or (errorHandler.buildDepError "peg-matching"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }