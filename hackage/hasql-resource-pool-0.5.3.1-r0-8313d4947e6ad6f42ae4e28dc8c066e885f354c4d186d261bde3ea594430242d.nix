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
      identifier = { name = "hasql-resource-pool"; version = "0.5.3.1"; };
      license = "MIT";
      copyright = "(c) 2022, Maxim Avanov";
      maintainer = "Maxim Avanov <maxim.avanov@gmail.com>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/avanov/hasql-resource-pool";
      url = "";
      synopsis = "A pool of connections for Hasql based on resource-pool.";
      description = "This package is derived from hasql-pool v0.5.2.2 and continues using resource-pool for an underlying pool implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."resource-pool-fork-avanov" or (errorHandler.buildDepError "resource-pool-fork-avanov"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
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