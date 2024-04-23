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
      identifier = { name = "xml-query"; version = "0.9.0.2"; };
      license = "MIT";
      copyright = "(c) 2015, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/xml-query ";
      url = "";
      synopsis = "A parser-agnostic declarative API for querying XML-documents";
      description = "Provides an API for definitition of destructuring of XML-documents,\nwhile delegating the actual parsing process to outer APIs.\nThus it allows the users to implement parser-agnostic XML-parsing specifications,\nwith the intent of later interpreting them with specific parsers\nor documentation generators, or what not.\n\nFollowing are the known interpreters:\n\n* <http://hackage.haskell.org/package/xml-query-xml-types \"xml-query-xml-types\">\n\n* <http://hackage.haskell.org/package/xml-query-xml-conduit \"xml-query-xml-conduit\">";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
        ];
        buildable = true;
      };
    };
  }