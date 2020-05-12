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
      specVersion = "2.4";
      identifier = { name = "snmp"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 (c) Andrew Martin";
      maintainer = "chessai1996@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/chessai/snmp.git";
      url = "";
      synopsis = "SNMP protocol library";
      description = "SNMP library for writing client applications with SNMP";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."language-asn" or (errorHandler.buildDepError "language-asn"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }