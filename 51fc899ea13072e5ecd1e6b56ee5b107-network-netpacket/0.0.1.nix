{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
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
        network-netpacket = {
          depends  = [
            hsPkgs.network
            hsPkgs.ioctl
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network-interfacerequest
            hsPkgs.foreign-storable-asymmetric
          ];
          build-tools = [ hsPkgs.hsc2hs ];
        };
      };
    }