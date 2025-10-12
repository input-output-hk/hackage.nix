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
        name = "postgresql-connection-string";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "(c) 2025, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/postgresql-connection-string";
      url = "";
      synopsis = "PostgreSQL connection string type, parser and builder";
      description = "A library for parsing and constructing PostgreSQL connection strings (URIs and keyword/value format).\n\nSupports the full PostgreSQL connection URI format as specified in\n<https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING the PostgreSQL documentation>,\nincluding:\n\n* User and password authentication\n\n* Single and multiple host specifications with optional ports\n\n* Database name specification\n\n* Connection parameters as query string\n\n* Percent-encoding for special characters\n\nThe library provides both parsing (from Text to structured representation) and\nrendering (back to connection string format, either as URI or keyword/value pairs).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."postgresql-connection-string".components.sublibs.percent-encoding or (errorHandler.buildDepError "postgresql-connection-string:percent-encoding"))
          (hsPkgs."postgresql-connection-string".components.sublibs.platform or (errorHandler.buildDepError "postgresql-connection-string:platform"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
        ];
        buildable = true;
      };
      sublibs = {
        "platform" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
          buildable = true;
        };
        "percent-encoding" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."postgresql-connection-string".components.sublibs.platform or (errorHandler.buildDepError "postgresql-connection-string:platform"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
          buildable = true;
        };
      };
      tests = {
        "library-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-connection-string" or (errorHandler.buildDepError "postgresql-connection-string"))
            (hsPkgs."postgresql-connection-string".components.sublibs.platform or (errorHandler.buildDepError "postgresql-connection-string:platform"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }