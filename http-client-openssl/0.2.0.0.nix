{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-openssl";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/http-client";
        url = "";
        synopsis = "http-client backend using the OpenSSL library.";
        description = "Intended for use by higher-level libraries.";
        buildType = "Simple";
      };
      components = {
        http-client-openssl = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.network
            hsPkgs.HsOpenSSL
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-openssl
              hsPkgs.http-types
              hsPkgs.HsOpenSSL
            ];
          };
        };
      };
    }