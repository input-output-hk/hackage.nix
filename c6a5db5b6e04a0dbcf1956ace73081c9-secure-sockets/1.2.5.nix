{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "secure-sockets";
          version = "1.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "Google Inc. 2010";
        maintainer = "dave@natulte.net";
        author = "David Anderson";
        homepage = "http://code.google.com/p/secure-hs/";
        url = "";
        synopsis = "Secure point-to-point connectivity library";
        description = "This library simplifies the task of securely connecting two\nservers to each other, with strong authentication and\nencryption on the wire.";
        buildType = "Simple";
      };
      components = {
        secure-sockets = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.HsOpenSSL
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.process
          ];
        };
      };
    }