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
      identifier = { name = "network-house"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "The House Authors";
      homepage = "https://github.com/nh2/network-house";
      url = "";
      synopsis = "data and parsers for Ethernet, TCP, UDP, IPv4, IPv6, ICMP, DHCP, TFTP";
      description = "The network stack extracted from the House (<https://code.google.com/p/pdxhouse/>) project.\n\nProvides data structures and parsers for Ethernet, TCP, UDP, IPv4, IPv6, ICMP, DHCP and TFTP packets as well as some server implementations.\n\nThis package was extracted from house due to the lack of existing network package parsing libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }