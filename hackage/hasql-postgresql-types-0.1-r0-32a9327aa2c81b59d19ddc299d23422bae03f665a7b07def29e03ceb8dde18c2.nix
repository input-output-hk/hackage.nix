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
      identifier = { name = "hasql-postgresql-types"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2026, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-postgresql-types";
      url = "";
      synopsis = "Integration of \"hasql\" with \"postgresql-types\"";
      description = "Provides automatic encoder and decoder generation for [\"hasql\"](https://hackage.haskell.org/package/hasql),\nsupporting all PostgreSQL standard types defined in the [\"postgresql-types\"](https://hackage.haskell.org/package/postgresql-types) package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."postgresql-types-algebra" or (errorHandler.buildDepError "postgresql-types-algebra"))
          (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
          (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
        ];
        buildable = true;
      };
    };
  }