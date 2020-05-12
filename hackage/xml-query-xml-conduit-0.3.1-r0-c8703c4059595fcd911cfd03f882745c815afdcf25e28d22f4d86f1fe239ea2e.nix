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
      identifier = { name = "xml-query-xml-conduit"; version = "0.3.1"; };
      license = "MIT";
      copyright = "(c) 2015, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/xml-query-xml-conduit ";
      url = "";
      synopsis = "A binding for the \"xml-query\" and \"xml-conduit\" libraries";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml-query" or (errorHandler.buildDepError "xml-query"))
          (hsPkgs."xml-query-xml-types" or (errorHandler.buildDepError "xml-query-xml-types"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      };
    }