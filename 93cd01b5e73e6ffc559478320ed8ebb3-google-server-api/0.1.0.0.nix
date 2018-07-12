{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "google-server-api";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/haskell-google-server-api#readme";
        url = "";
        synopsis = "Google APIs for server to server applications";
        description = "This library provides a way to use Google API for server to server applications.";
        buildType = "Simple";
      };
      components = {
        "google-server-api" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.http-api-data
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.HsOpenSSL
            hsPkgs.mime-mail
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.read-env-var
            hsPkgs.RSA
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix-time
            hsPkgs.unordered-containers
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
          ];
        };
      };
    }