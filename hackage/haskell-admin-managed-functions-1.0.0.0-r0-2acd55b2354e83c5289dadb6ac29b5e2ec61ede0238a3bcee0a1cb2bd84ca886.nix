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
      specVersion = "1.12";
      identifier = {
        name = "haskell-admin-managed-functions";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "2022 Martin Bednar";
      maintainer = "bednam17@fit.cvut.cz";
      author = "Martin Bednar";
      homepage = "https://github.com/martin-bednar/haskell-admin#readme";
      url = "";
      synopsis = "Managed Functions integration for Haskell Admin";
      description = "Please see the README on GitHub at <https://github.com/martin-bednar/haskell-admin#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-admin-core" or (errorHandler.buildDepError "haskell-admin-core"))
          (hsPkgs."managed-functions" or (errorHandler.buildDepError "managed-functions"))
          (hsPkgs."managed-functions-http-connector" or (errorHandler.buildDepError "managed-functions-http-connector"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
        ];
        buildable = true;
      };
      tests = {
        "haskell-admin-managed-functions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-admin-core" or (errorHandler.buildDepError "haskell-admin-core"))
            (hsPkgs."haskell-admin-managed-functions" or (errorHandler.buildDepError "haskell-admin-managed-functions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."managed-functions" or (errorHandler.buildDepError "managed-functions"))
            (hsPkgs."managed-functions-http-connector" or (errorHandler.buildDepError "managed-functions-http-connector"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          ];
          buildable = true;
        };
      };
    };
  }