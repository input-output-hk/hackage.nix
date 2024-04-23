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
      identifier = { name = "commsec"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson (2013)";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Provide communications security using symmetric ephemeral keys";
      description = "This package provides confidentiallity,\nintegrity and replay detection. Users must\nprovide ephemeral keys for one time use (reuse\nwill compromise the security guarentees).\nStarting with shared secret, this package\nbuilds bi-directional channels for datagram\nbased communication.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cipher-aes128" or (errorHandler.buildDepError "cipher-aes128"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
    };
  }