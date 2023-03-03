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
      specVersion = "2.2";
      identifier = { name = "polysemy-account"; version = "0.2.0.0"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2023 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "";
      url = "";
      synopsis = "Account management with Servant and Polysemy";
      description = "See https://hackage.haskell.org/package/polysemy-account/docs/Polysemy-Account.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."elocrypt" or (errorHandler.buildDepError "elocrypt"))
          (hsPkgs."password" or (errorHandler.buildDepError "password"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-db" or (errorHandler.buildDepError "polysemy-db"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."servant-auth" or (errorHandler.buildDepError "servant-auth"))
          (hsPkgs."sqel" or (errorHandler.buildDepError "sqel"))
          ];
        buildable = true;
        };
      };
    }