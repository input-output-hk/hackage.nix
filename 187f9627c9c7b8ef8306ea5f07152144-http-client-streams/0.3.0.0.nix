{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tls = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-streams";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "David Johnson (c) 2014";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "http-client for io-streams supporting openssl";
        description = "\nThin io-streams wrapper for http-client w/ openssl support.\nTo use the tls package (instead of openssl) compile with the TLS flag\n\n@ cabal configure -ftls @\n";
        buildType = "Simple";
      };
      components = {
        http-client-streams = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.io-streams
            hsPkgs.mtl
            hsPkgs.transformers
          ] ++ (if _flags.tls
            then [ hsPkgs.http-client-tls ]
            else [
              hsPkgs.http-client-openssl
              hsPkgs.HsOpenSSL
            ]);
        };
      };
    }