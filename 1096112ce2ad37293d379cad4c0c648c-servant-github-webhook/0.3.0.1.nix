{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-github-webhook";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "Jacob Thomas Errington 2016";
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
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.github
            hsPkgs.wai
            hsPkgs.Crypto
            hsPkgs.base16-bytestring
            hsPkgs.string-conversions
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
            ];
          };
        };
      };
    }