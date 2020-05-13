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
      identifier = { name = "servant-client-namedargs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cporeskydev@gmail.com";
      author = "Cullin Poresky";
      homepage = "";
      url = "";
      synopsis = "Automatically derive API client functions with named and optional parameters";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."servant-namedargs" or (errorHandler.buildDepError "servant-namedargs"))
          (hsPkgs."named" or (errorHandler.buildDepError "named"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."named" or (errorHandler.buildDepError "named"))
            (hsPkgs."servant-namedargs" or (errorHandler.buildDepError "servant-namedargs"))
            (hsPkgs."servant-server-namedargs" or (errorHandler.buildDepError "servant-server-namedargs"))
            (hsPkgs."servant-client-namedargs" or (errorHandler.buildDepError "servant-client-namedargs"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }