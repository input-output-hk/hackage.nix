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
      identifier = { name = "list-t-attoparsec"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-attoparsec";
      url = "";
      synopsis = "An \"attoparsec\" adapter for \"list-t\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."list-t-attoparsec" or (errorHandler.buildDepError "list-t-attoparsec"))
            (hsPkgs."list-t-text" or (errorHandler.buildDepError "list-t-text"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }