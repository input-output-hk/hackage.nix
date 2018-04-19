{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-github-webhook";
          version = "0.3.2.0";
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
        servant-github-webhook = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.github
            hsPkgs.http-types
            hsPkgs.memory
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.wai
          ];
        };
        tests = {
          multikey = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.servant-server
              hsPkgs.servant-github-webhook
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
          singlekey = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.servant-server
              hsPkgs.servant-github-webhook
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }