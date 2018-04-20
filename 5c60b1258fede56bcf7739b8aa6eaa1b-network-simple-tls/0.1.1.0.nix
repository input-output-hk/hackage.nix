{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-simple-tls";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Renzo Carbonara 2013";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/network-simple-tls";
        url = "";
        synopsis = "Simple interface to TLS secured network sockets.";
        description = "Simple interface to TLS secured network sockets.";
        buildType = "Simple";
      };
      components = {
        network-simple-tls = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.certificate
            hsPkgs.crypto-random-api
            hsPkgs.network
            hsPkgs.network-simple
            hsPkgs.tls
            hsPkgs.tls-extra
          ];
        };
      };
    }