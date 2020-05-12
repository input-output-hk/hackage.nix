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
      identifier = { name = "NTRU"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, CyberPoint International, LLC       ";
      maintainer = "opensource@cyberpointllc.com";
      author = "Theo Levine, Tom Cornelius, Elizabeth Hughes, CyberPoint International LLC. ";
      homepage = "";
      url = "";
      synopsis = "NTRU Cryptography         ";
      description = "A Haskell implementation of the NTRU cryptographic system, following the IEEE Standard Specification for Public Key Crpytographic Techniques Based on Hard Problems over Lattices (IEEE Std 1363.1-2008)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."polynomial" or (errorHandler.buildDepError "polynomial"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }