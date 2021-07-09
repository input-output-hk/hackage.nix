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
      specVersion = "3.0";
      identifier = {
        name = "parser-unbiased-choice-monad-embedding";
        version = "0.0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Askar Safin <safinaskar@mail.ru>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Parsing combinator library with unbiased choice and support for embedding arbitrary monad. You may use applicative or arrow style. Supports left recursion, location tracking, parsing and semantic error messages, heuristic ambiguity checking. Based on Earley";
      description = "Parsing combinator library with unbiased choice and support for embedding arbitrary monad. You may use applicative or arrow style. Supports left recursion, location tracking, parsing and semantic error messages, heuristic ambiguity checking. Based on Earley.\n\nFollow thread https://mail.haskell.org/pipermail/haskell-cafe/2021-June/134094.html for more info.\n\nYou don't need to be registered on SourceHut to create bug report.\n\nIf you think that this software is not needed or existing software already subsumes its functionality, please, tell me that, I will not be offended.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."lexer-applicative" or (errorHandler.buildDepError "lexer-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }