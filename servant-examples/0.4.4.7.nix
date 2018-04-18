{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-examples";
          version = "0.4.4.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "Example programs for servant";
        description = "Example programs for servant,\nshowcasing solutions to common needs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          tutorial = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.http-types
              hsPkgs.js-jquery
              hsPkgs.lucid
              hsPkgs.random
              hsPkgs.servant
              hsPkgs.servant-docs
              hsPkgs.servant-jquery
              hsPkgs.servant-lucid
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
          t8-main = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.either
              hsPkgs.servant
              hsPkgs.servant-client
              hsPkgs.servant-server
              hsPkgs.wai
            ];
          };
          hackage = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.either
              hsPkgs.servant
              hsPkgs.servant-client
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          wai-middleware = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
            ];
          };
          auth-combinator = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }