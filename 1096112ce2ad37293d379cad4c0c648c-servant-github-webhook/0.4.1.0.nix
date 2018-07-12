{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-github-webhook";
          version = "0.4.1.0";
        };
        license = "MIT";
        copyright = "Jacob Thomas Errington (c) 2016-2018";
        maintainer = "servant-github-webhook@mail.jerrington.me";
        author = "Jacob Thomas Errington";
        homepage = "https://github.com/tsani/servant-github-webhook";
        url = "";
        synopsis = "Servant combinators to facilitate writing GitHub webhooks.";
        description = "This package provides servant combinators that make writing safe GitHub\nwebhooks very simple.\n\nIt features automatic verification of the digital signatures provided by\nGitHub in the webhook HTTP requests as well as route dispatching based on\nrepository event type.";
        buildType = "Simple";
      };
      components = {
        "servant-github-webhook" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.base16-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.github
            hsPkgs.github-webhooks
            hsPkgs.http-types
            hsPkgs.unordered-containers
            hsPkgs.memory
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
          ];
        };
        tests = {
          "multikey" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.servant-server
              hsPkgs.servant-github-webhook
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.transformers
            ];
          };
          "singlekey" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.servant-server
              hsPkgs.servant-github-webhook
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.transformers
            ];
          };
          "dynamickey" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.servant-server
              hsPkgs.servant-github-webhook
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.transformers
            ];
          };
        };
      };
    }