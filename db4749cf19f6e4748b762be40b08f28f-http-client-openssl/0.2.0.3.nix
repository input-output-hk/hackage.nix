{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-client-openssl";
          version = "0.2.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/http-client";
        url = "";
        synopsis = "http-client backend using the OpenSSL library.";
        description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.";
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