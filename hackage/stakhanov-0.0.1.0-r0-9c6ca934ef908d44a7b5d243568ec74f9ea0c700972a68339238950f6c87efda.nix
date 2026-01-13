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
      identifier = { name = "stakhanov"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2026 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/stakhanov";
      url = "";
      synopsis = "A Haskell PGMQ client";
      description = "A fast Haskell PGMQ client for busy workers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contravariant-extras" or (errorHandler.buildDepError "contravariant-extras"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hasql-dynamic-statements" or (errorHandler.buildDepError "hasql-dynamic-statements"))
          (hsPkgs."hasql-th" or (errorHandler.buildDepError "hasql-th"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "stakhanov" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stakhanov" or (errorHandler.buildDepError "stakhanov"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }