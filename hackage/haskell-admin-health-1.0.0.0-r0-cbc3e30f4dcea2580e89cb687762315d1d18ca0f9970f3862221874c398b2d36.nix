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
      identifier = { name = "haskell-admin-health"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2022 Martin Bednar";
      maintainer = "bednam17@fit.cvut.cz";
      author = "Martin Bednar";
      homepage = "https://github.com/martin-bednar/haskell-admin#readme";
      url = "";
      synopsis = "Application Health Component for Haskell Admin";
      description = "Please see the README on GitHub at <https://github.com/martin-bednar/haskell-admin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-admin-core" or (errorHandler.buildDepError "haskell-admin-core"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          ];
        buildable = true;
        };
      tests = {
        "haskell-admin-health-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-admin-core" or (errorHandler.buildDepError "haskell-admin-core"))
            (hsPkgs."haskell-admin-health" or (errorHandler.buildDepError "haskell-admin-health"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            ];
          buildable = true;
          };
        };
      };
    }