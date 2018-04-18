{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-msg";
          version = "0.8";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Lana Black <lanablack@amok.cc>";
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