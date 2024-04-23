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
      identifier = { name = "language-oberon"; version = "0.3.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2018 Mario Blažević";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/language-oberon";
      url = "";
      synopsis = "Parser, pretty-printer, and more for the Oberon programming language";
      description = "The library and the executable support both the original Oberon and the Oberon-2 programming language, as described\nin the respective <http://www.ethoberon.ethz.ch/compiler/index.html#report language reports>.\n\nThe original purpose for the library was to be a test of the underlying\n<http://hackage.haskell.org/package/grammatical-parsers grammatical-parsers> library. The experiment succeeded, so\nthe package can be used in practice.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."input-parsers" or (errorHandler.buildDepError "input-parsers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
          (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
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
            (hsPkgs."input-parsers" or (errorHandler.buildDepError "input-parsers"))
            (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
            (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
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
            (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."language-oberon" or (errorHandler.buildDepError "language-oberon"))
          ];
          buildable = true;
        };
      };
    };
  }