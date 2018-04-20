{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-server";
          version = "0.2.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/plow-technologies/servant-auth#readme";
        url = "";
        synopsis = "servant-server/servant-auth compatibility";
        description = "This package provides the required instances for using the @Auth@ combinator\nin your 'servant' server.\n\nBoth cookie- and token- (REST API) based authentication is provided.\n\nFor a quick overview of the usage, see the <http://github.com/plow-technologies/servant-auth#readme README>.";
        buildType = "Simple";
      };
      components = {
        servant-auth-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.servant-auth
            hsPkgs.cookie
            hsPkgs.wai
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.case-insensitive
            hsPkgs.jose
            hsPkgs.monad-time
            hsPkgs.time
            hsPkgs.servant-server
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.entropy
            hsPkgs.crypto-api
            hsPkgs.data-default-class
            hsPkgs.http-api-data
            hsPkgs.http-types
          ];
        };
        exes = {
          readme = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.servant-auth
              hsPkgs.cookie
              hsPkgs.wai
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.bytestring-conversion
              hsPkgs.case-insensitive
              hsPkgs.jose
              hsPkgs.monad-time
              hsPkgs.time
              hsPkgs.servant-server
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.lens
              hsPkgs.entropy
              hsPkgs.crypto-api
              hsPkgs.data-default-class
              hsPkgs.http-api-data
              hsPkgs.http-types
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
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.servant-auth
              hsPkgs.cookie
              hsPkgs.wai
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.bytestring-conversion
              hsPkgs.case-insensitive
              hsPkgs.jose
              hsPkgs.monad-time
              hsPkgs.time
              hsPkgs.servant-server
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.lens
              hsPkgs.entropy
              hsPkgs.crypto-api
              hsPkgs.data-default-class
              hsPkgs.http-api-data
              hsPkgs.http-types
              hsPkgs.servant-auth-server
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.aeson
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