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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "valiant-bluefin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshburgess.webdev@gmail.com";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/valiant";
      url = "";
      synopsis = "Bluefin effect adapter for valiant";
      description = "Provides an @Valiant@ effect handle for the @bluefin@ effect system,\nenabling compile-time checked SQL queries with explicit effect passing.\n\n@\nimport Valiant.Bluefin\n\nmyApp :: Valiant e -> Eff es [User]\nmyApp db = do\n  users <- fetchAllB db listUsers ()\n  pure users\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bluefin" or (errorHandler.buildDepError "bluefin"))
          (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
          (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
        ];
        buildable = true;
      };
      tests = {
        "valiant-bluefin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
            (hsPkgs."valiant-bluefin" or (errorHandler.buildDepError "valiant-bluefin"))
            (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }