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
    flags = { exes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-lua2"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Mitchell Rosen";
      homepage = "http://github.com/mitchellwrosen/language-lua2";
      url = "";
      synopsis = "Lua parser and pretty printer";
      description = "Lua parser and pretty printer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
          (hsPkgs."lexer-applicative" or (errorHandler.buildDepError "lexer-applicative"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            (hsPkgs."lexer-applicative" or (errorHandler.buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or (errorHandler.buildDepError "language-lua2"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            ];
          buildable = if !flags.exes then false else true;
          };
        "lex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lexer-applicative" or (errorHandler.buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or (errorHandler.buildDepError "language-lua2"))
            (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
            ];
          buildable = if !flags.exes then false else true;
          };
        };
      tests = {
        "language-lua2-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lexer-applicative" or (errorHandler.buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or (errorHandler.buildDepError "language-lua2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }