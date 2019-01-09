{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ip2proxy"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sales@ip2location.com";
      author = "IP2Location";
      homepage = "http://www.ip2location.com";
      url = "";
      synopsis = "IP2Proxy Haskell package for proxy detection.";
      description = "This Haskell package allows users to query an IP address to determine if it was being used as open proxy, web proxy, VPN anonymizer and TOR exits.";
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