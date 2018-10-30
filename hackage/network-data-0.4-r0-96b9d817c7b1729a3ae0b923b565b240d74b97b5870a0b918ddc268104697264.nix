{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "network-data";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library for network data structures (ex: ethernet/ip/udp/tcp headers and helper functions)";
      description = "This library includes definitions for common headers such as\nEthernet, IPv4, IPv6, UDP, TCP, etc. This code is untested for any serious\nwork - use at your own risk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.prettyclass)
          (hsPkgs.pretty)
        ];
      };
    };
  }