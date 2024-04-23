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
      specVersion = "1.10";
      identifier = { name = "language-oberon"; version = "0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/language-oberon";
      url = "";
      synopsis = "Parser, pretty-printer, and type checker for the Oberon programming language";
      description = "The library and the executable support both the original Oberon and the Oberon-2 programming language, as described\nin the respective <http://www.ethoberon.ethz.ch/compiler/index.html#report language reports>.\n\nThe grammars in \"Language.Oberon.Grammar\" attempt to follow the language grammars from the reports, while\ngenerating a semantically meaningful abstract syntax tree; the latter is defined in \"Language.Oberon.AST\". As the\ngrammars are ambiguous, it is necessary to resolve the ambiguities after parsing all Oberon modules in use.\n\"Language.Oberon.Resolver\" provides this functionality. Only after the ambiguity resolution can the abstract syntax\ntree be pretty-printed using the instances from \"Language.Oberon.Pretty\".\n\nThe original purpose for the library was to be a test of the underlying\n<http://hackage.haskell.org/package/grammatical-parsers grammatical-parsers> library. The experiment succeeded, so    the package can be used in practice.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."repr-tree-syb" or (errorHandler.buildDepError "repr-tree-syb"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
            (hsPkgs."language-oberon" or (errorHandler.buildDepError "language-oberon"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."language-oberon" or (errorHandler.buildDepError "language-oberon"))
          ];
          buildable = true;
        };
      };
    };
  }