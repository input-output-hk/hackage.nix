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
      identifier = { name = "xml-query-xml-types"; version = "0.4"; };
      license = "MIT";
      copyright = "(c) 2015, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/xml-query-xml-types ";
      url = "";
      synopsis = "An interpreter of \"xml-query\" queries for the \"xml-types\" documents";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
          (hsPkgs."xml-query" or (errorHandler.buildDepError "xml-query"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."success" or (errorHandler.buildDepError "success"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."xml-query" or (errorHandler.buildDepError "xml-query"))
            (hsPkgs."xml-query-xml-types" or (errorHandler.buildDepError "xml-query-xml-types"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }