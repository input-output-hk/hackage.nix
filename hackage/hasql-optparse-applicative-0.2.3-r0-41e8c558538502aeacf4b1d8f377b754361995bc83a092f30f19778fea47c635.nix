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
      identifier = { name = "hasql-optparse-applicative"; version = "0.2.3"; };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/hasql-optparse-applicative ";
      url = "";
      synopsis = "\"optparse-applicative\" parsers for \"hasql\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      };
    }