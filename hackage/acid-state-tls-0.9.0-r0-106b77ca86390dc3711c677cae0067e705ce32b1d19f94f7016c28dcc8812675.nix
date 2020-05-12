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
      specVersion = "1.6";
      identifier = { name = "acid-state-tls"; version = "0.9.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2013, David Himmelstrup, Jeremy Shaw";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Jeremy Shaw";
      homepage = "http://acid-state.seize.it/";
      url = "";
      synopsis = "Add TLS support for Data.Acid.Remote";
      description = "Adds TLS support for connections to remote AcidState databases";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          ];
        buildable = true;
        };
      };
    }