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
    flags = { build-example = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "wai-session-hasql"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haoxiangz201@gmail.com";
      author = "Haoxiang Zhao";
      homepage = "https://github.com/Block81838/WAI-Session-Hasql";
      url = "";
      synopsis = "A wai-session store using Hasql and PostgreSQL";
      description = "Provides PostgreSQL as wai-session store, and using Hasql as the PostgreSQL connector. It supports both single Hasql connection and Hasql pool connection.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."mmzk-typeid" or (errorHandler.buildDepError "mmzk-typeid"))
          (hsPkgs."wai-session" or (errorHandler.buildDepError "wai-session"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      exes = {
        "wai-session-hasql-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai-session-hasql" or (errorHandler.buildDepError "wai-session-hasql"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
            (hsPkgs."wai-session" or (errorHandler.buildDepError "wai-session"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
            (hsPkgs."pqi-native" or (errorHandler.buildDepError "pqi-native"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = if !flags.build-example then false else true;
        };
      };
      tests = {
        "wai-session-hasql-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai-session-hasql" or (errorHandler.buildDepError "wai-session-hasql"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
            (hsPkgs."pqi-native" or (errorHandler.buildDepError "pqi-native"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
    };
  }