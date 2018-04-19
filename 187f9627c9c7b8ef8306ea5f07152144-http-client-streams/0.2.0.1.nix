{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-streams";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "David Johnson (c) 2014";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "http-client for io-streams supporting openssl";
        description = "Thin io-streams wrapper for http-client w/ openssl support";
        buildType = "Simple";
      };
      components = {
        http-client-streams = {
          depends  = [
            hsPkgs.HsOpenSSL
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-openssl
            hsPkgs.io-streams
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }