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
      identifier = { name = "html-tokenizer"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/html-tokenizer";
      url = "";
      synopsis = "An \"attoparsec\"-based HTML tokenizer";
      description = "This library can be used as a basis for complex HTML parsers,\nor for streaming.\nE.g., by composing it with\n<http://hackage.haskell.org/package/list-t-attoparsec the \"list-t-attoparsec\" library>\nyou can produce a token stream,\nthus becoming able to implement a highly efficient stream-parser,\nwhich works in a single pass, constant memory and is capable of early termination.\n<http://hackage.haskell.org/package/list-t-html-parser \"list-t-html-parser\"> is such a parser.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."conversion" or (errorHandler.buildDepError "conversion"))
          (hsPkgs."conversion-text" or (errorHandler.buildDepError "conversion-text"))
          (hsPkgs."conversion-case-insensitive" or (errorHandler.buildDepError "conversion-case-insensitive"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
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
          buildable = true;
        };
      };
    };
  }