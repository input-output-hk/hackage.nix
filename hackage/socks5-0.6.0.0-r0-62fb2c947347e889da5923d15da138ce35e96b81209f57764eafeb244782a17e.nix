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
      specVersion = "3.0";
      identifier = { name = "socks5"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@homovetus.com";
      author = "Shi Rao";
      homepage = "";
      url = "";
      synopsis = "A SOCKS5 (RFC 1928) implementation";
      description = "This package provides a library with simple functions to create SOCKS5 clients and servers, along with a standalone server executable.\n\nIt supports all standard SOCKS5 commands (CONNECT, BIND, and UDP ASSOCIATE), Username/Password authentication (RFC 1929), and TLS-secured connections.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
        ];
        buildable = true;
      };
      exes = {
        "socks5" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."socks5" or (errorHandler.buildDepError "socks5"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          ];
          buildable = true;
        };
        "socks5-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."socks5" or (errorHandler.buildDepError "socks5"))
          ];
          buildable = true;
        };
      };
      tests = {
        "socks5-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
            (hsPkgs."socks5" or (errorHandler.buildDepError "socks5"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          ];
          buildable = true;
        };
      };
    };
  }