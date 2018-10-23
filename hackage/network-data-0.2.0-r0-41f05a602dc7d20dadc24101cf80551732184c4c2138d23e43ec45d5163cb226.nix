{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "network-data";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library for network data structures (ex: ip/udp/tcp headers and helper functions)";
      description = "This library includes definiations for common headers such as IPv4, IPv6, UDP, TCP, etc.\nData type/functions for full packets, better typeclass setup, and a more agreeable interface\nwith a berkeley sockets like API should be coming soon.  Also, test cases - this code is\nuntested as of yet.";
      buildType = "Simple";
    };
    components = {
      "network-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.prettyclass)
          (hsPkgs.pretty)
          (hsPkgs.parsec)
        ];
      };
    };
  }