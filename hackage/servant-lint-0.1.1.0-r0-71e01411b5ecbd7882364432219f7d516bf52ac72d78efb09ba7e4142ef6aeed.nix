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
      identifier = { name = "servant-lint"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "isaac.shapira@platonic.systems";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "Lint Servant Routes";
      description = "Lint Servant Routes and reject bad routes, overlaps, and more";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe-coloured-text" or (errorHandler.buildDepError "safe-coloured-text"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-multipart" or (errorHandler.buildDepError "servant-multipart"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
        ];
        buildable = true;
      };
      tests = {
        "servant-lint-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."safe-coloured-text" or (errorHandler.buildDepError "safe-coloured-text"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-multipart" or (errorHandler.buildDepError "servant-multipart"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }