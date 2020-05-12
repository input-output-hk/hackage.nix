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
      identifier = { name = "transient-universe-tls"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://github.com/transient-haskell/transient-universe-tls";
      url = "";
      synopsis = "transient with secure communications";
      description = "Secure communications for transient";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
          (hsPkgs."transient-universe" or (errorHandler.buildDepError "transient-universe"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          ];
        buildable = true;
        };
      };
    }