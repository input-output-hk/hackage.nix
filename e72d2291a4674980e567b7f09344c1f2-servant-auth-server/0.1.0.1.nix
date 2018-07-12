{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-server";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/jkarni/servant-auth-server#readme";
        url = "";
        synopsis = "servant-server/servant-auth compatibility";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "servant-auth-server" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.servant-auth
            hsPkgs.cookie
            hsPkgs.wai
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.jose
            hsPkgs.monad-time
            hsPkgs.time
            hsPkgs.servant-server
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.reflection
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.entropy
            hsPkgs.scrypt
            hsPkgs.crypto-api
            hsPkgs.data-default-class
            hsPkgs.http-api-data
          ];
        };
        exes = {
          "readme" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.servant-auth
              hsPkgs.cookie
              hsPkgs.wai
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.jose
              hsPkgs.monad-time
              hsPkgs.time
              hsPkgs.servant-server
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.reflection
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.lens
              hsPkgs.entropy
              hsPkgs.scrypt
              hsPkgs.crypto-api
              hsPkgs.data-default-class
              hsPkgs.http-api-data
              hsPkgs.servant-auth
              hsPkgs.servant-auth-server
              hsPkgs.servant-server
              hsPkgs.warp
              hsPkgs.markdown-unlit
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.servant-auth
              hsPkgs.cookie
              hsPkgs.wai
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.jose
              hsPkgs.monad-time
              hsPkgs.time
              hsPkgs.servant-server
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.reflection
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.lens
              hsPkgs.entropy
              hsPkgs.scrypt
              hsPkgs.crypto-api
              hsPkgs.data-default-class
              hsPkgs.http-api-data
              hsPkgs.servant-auth-server
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.wai
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.warp
              hsPkgs.wreq
              hsPkgs.http-types
              hsPkgs.http-client
            ];
          };
        };
      };
    }