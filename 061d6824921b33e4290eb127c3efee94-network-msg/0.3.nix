{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-msg";
          version = "0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Lana Black <sickmind@i2pmail.org>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Recvmsg and sendmsg bindings.";
        description = "Bindings to sendmsg and recvmsg POSIX functions.";
        buildType = "Simple";
      };
      components = {
        network-msg = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.unix
          ];
        };
      };
    }