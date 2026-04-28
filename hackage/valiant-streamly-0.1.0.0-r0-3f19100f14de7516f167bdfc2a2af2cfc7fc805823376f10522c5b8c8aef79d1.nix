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
      identifier = { name = "valiant-streamly"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshburgess.webdev@gmail.com";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/valiant";
      url = "";
      synopsis = "Streamly streaming adapter for valiant";
      description = "Stream PostgreSQL query results using the @streamly@ library.\nProvides cursor-based and fold-based producers as @Stream IO r@\nvalues, enabling high-performance composable stream processing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
        ];
        buildable = true;
      };
      tests = {
        "valiant-streamly-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
            (hsPkgs."valiant-streamly" or (errorHandler.buildDepError "valiant-streamly"))
            (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }