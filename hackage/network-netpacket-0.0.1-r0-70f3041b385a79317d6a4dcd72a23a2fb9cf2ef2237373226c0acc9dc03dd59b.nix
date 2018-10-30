{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "network-netpacket";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Miller (andrew.miller@lanthaps.com)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for low-level packet sockets (AF_PACKET)";
      description = "Haskell bindings for low-level packet sockets (AF_PACKET)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.ioctl)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network-interfacerequest)
          (hsPkgs.foreign-storable-asymmetric)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }