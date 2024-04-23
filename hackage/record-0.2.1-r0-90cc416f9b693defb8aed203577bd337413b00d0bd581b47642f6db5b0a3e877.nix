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
    flags = { doctest = true; demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "record"; version = "0.2.1"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record ";
      url = "";
      synopsis = "First class records implemented with quasi-quotation";
      description = "An API of just two quasi-quoters,\nproviding a full-scale solution to the notorious records problem of Haskell.\n\nLinks:\n\n* <http://nikita-volkov.github.io/record A comprehensive introduction to the library>.\n\n* <https://github.com/nikita-volkov/record/blob/master/demo/Main.hs Demo>.\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "demo" = {
          depends = pkgs.lib.optionals (!!flags.demo) [
            (hsPkgs."record" or (errorHandler.buildDepError "record"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.demo then false else true;
        };
      };
      tests = {
        "doctest" = {
          depends = pkgs.lib.optionals (!!flags.doctest) [
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.doctest then false else true;
        };
      };
    };
  }