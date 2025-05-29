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
      specVersion = "3.6";
      identifier = { name = "hasql-resource-pool"; version = "1.9.1.2"; };
      license = "MIT";
      copyright = "(c) 2025, Maxim Avanov";
      maintainer = "Maxim Avanov <maxim.avanov@gmail.com>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/avanov/hasql-resource-pool";
      url = "";
      synopsis = "A pool of connections for Hasql based on resource-pool.";
      description = "This package was originally derived from hasql-pool v0.5.2.2. It continues using `resource-pool` for its pool implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-resource-pool" or (errorHandler.buildDepError "hasql-resource-pool"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }