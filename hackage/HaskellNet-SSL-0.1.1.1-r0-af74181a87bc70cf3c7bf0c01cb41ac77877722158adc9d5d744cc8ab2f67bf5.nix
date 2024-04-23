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
      specVersion = "1.8";
      identifier = { name = "HaskellNet-SSL"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Daniel P. Wright";
      maintainer = "dani@dpwright.com";
      author = "Daniel P. Wright";
      homepage = "https://github.com/dpwright/HaskellNet-SSL";
      url = "";
      synopsis = "Helpers to connect to SSL/TLS mail servers with HaskellNet";
      description = "This package ties together the HaskellNet and connection\npackages to make it easy to open IMAP and SMTP connections\nover SSL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }