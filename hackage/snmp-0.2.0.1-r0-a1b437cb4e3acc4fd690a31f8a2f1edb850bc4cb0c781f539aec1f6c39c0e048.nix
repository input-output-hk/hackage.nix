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
      identifier = { name = "snmp"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Smirnov <chemistmail@gmail.com>";
      author = "Alexey Smirnov";
      homepage = "";
      url = "";
      synopsis = "API for write snmp client.";
      description = "API for write snmp client.        ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."asn1-parse" or (errorHandler.buildDepError "asn1-parse"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cipher-des" or (errorHandler.buildDepError "cipher-des"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          ];
        buildable = true;
        };
      };
    }