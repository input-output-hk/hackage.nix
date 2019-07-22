{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ip2proxy"; version = "2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sales@ip2location.com";
      author = "IP2Location";
      homepage = "https://www.ip2location.com";
      url = "";
      synopsis = "IP2Proxy Haskell package for proxy detection.";
      description = "This Haskell package allows users to query an IP address to determine if it was being used as VPN anonymizer, open proxies, web proxies, Tor exits, data center, web hosting (DCH) range and search engine robots (SES).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.iproute)
          ];
        };
      };
    }