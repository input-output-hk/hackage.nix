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
      identifier = { name = "haskell-admin"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2022 Martin Bednar";
      maintainer = "bednam17@fit.cvut.cz";
      author = "Martin Bednar";
      homepage = "https://github.com/martin-bednar/haskell-admin#readme";
      url = "";
      synopsis = "Remote Management Platform for Haskell Applications";
      description = "Please see the README on GitHub at <https://github.com/martin-bednar/haskell-admin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haskell-admin-core" or (errorHandler.buildDepError "haskell-admin-core"))
          (hsPkgs."haskell-admin-health" or (errorHandler.buildDepError "haskell-admin-health"))
          (hsPkgs."haskell-admin-managed-functions" or (errorHandler.buildDepError "haskell-admin-managed-functions"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }