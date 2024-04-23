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
      identifier = { name = "list-t-html-parser"; version = "0.4.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-html-parser";
      url = "";
      synopsis = "Streaming HTML parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."html-tokenizer" or (errorHandler.buildDepError "html-tokenizer"))
          (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."conversion" or (errorHandler.buildDepError "conversion"))
          (hsPkgs."conversion-text" or (errorHandler.buildDepError "conversion-text"))
          (hsPkgs."conversion-case-insensitive" or (errorHandler.buildDepError "conversion-case-insensitive"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
        ];
        buildable = true;
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."list-t-html-parser" or (errorHandler.buildDepError "list-t-html-parser"))
            (hsPkgs."list-t-attoparsec" or (errorHandler.buildDepError "list-t-attoparsec"))
            (hsPkgs."list-t-text" or (errorHandler.buildDepError "list-t-text"))
            (hsPkgs."html-tokenizer" or (errorHandler.buildDepError "html-tokenizer"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            (hsPkgs."conversion" or (errorHandler.buildDepError "conversion"))
            (hsPkgs."conversion-text" or (errorHandler.buildDepError "conversion-text"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
          buildable = true;
        };
      };
    };
  }