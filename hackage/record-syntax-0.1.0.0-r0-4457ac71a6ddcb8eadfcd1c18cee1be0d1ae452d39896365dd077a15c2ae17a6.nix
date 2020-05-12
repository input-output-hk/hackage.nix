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
    flags = { doctest = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "record-syntax"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record-syntax ";
      url = "";
      synopsis = "A library for parsing and processing the Haskell syntax sprinkled with anonymous records";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."record" or (errorHandler.buildDepError "record"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."conversion" or (errorHandler.buildDepError "conversion"))
          (hsPkgs."conversion-text" or (errorHandler.buildDepError "conversion-text"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if !flags.doctest then false else true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."record" or (errorHandler.buildDepError "record"))
            (hsPkgs."record-syntax" or (errorHandler.buildDepError "record-syntax"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."record" or (errorHandler.buildDepError "record"))
            (hsPkgs."record-syntax" or (errorHandler.buildDepError "record-syntax"))
            (hsPkgs."conversion" or (errorHandler.buildDepError "conversion"))
            (hsPkgs."conversion-text" or (errorHandler.buildDepError "conversion-text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }