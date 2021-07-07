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
      identifier = { name = "ip2proxy"; version = "3.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sales@ip2location.com";
      author = "IP2Location";
      homepage = "https://www.ip2location.com";
      url = "";
      synopsis = "IP2Proxy Haskell package for proxy detection.";
      description = "This Haskell package allows users to query an IP address to determine if it was being used as VPN anonymizer, open proxies, web proxies, Tor exits, data center, web hosting (DCH) range, search engine robots (SES) and residential (RES).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          ];
        buildable = true;
        };
      };
    }