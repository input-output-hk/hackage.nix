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
      specVersion = "2.4";
      identifier = { name = "language-Modula2"; version = "0.1.2"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2020 Mario Blažević";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/language-Modula2";
      url = "";
      synopsis = "Parser, pretty-printer, and more for the Modula-2 programming language";
      description = "The library and the executable supports two versions of the Modula-2 programming language: as described by the\norginal language report and as standardized by the ISO.";
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
          (hsPkgs."input-parsers" or (errorHandler.buildDepError "input-parsers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."grammatical-parsers" or (errorHandler.buildDepError "grammatical-parsers"))
          (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."language-oberon" or (errorHandler.buildDepError "language-oberon"))
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
            (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."language-oberon" or (errorHandler.buildDepError "language-oberon"))
            (hsPkgs."language-Modula2" or (errorHandler.buildDepError "language-Modula2"))
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
            (hsPkgs."language-Modula2" or (errorHandler.buildDepError "language-Modula2"))
            ];
          buildable = true;
          };
        };
      };
    }