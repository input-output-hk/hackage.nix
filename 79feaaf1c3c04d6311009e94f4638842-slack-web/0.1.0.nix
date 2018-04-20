{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.21";
        identifier = {
          name = "slack-web";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2017 Juan Pedro Villa Isaza";
        maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        homepage = "https://github.com/jpvillaisaza/slack-web";
        url = "";
        synopsis = "Bindings for the Slack web API";
        description = "Haskell bindings for the Slack web API.";
        buildType = "Simple";
      };
      components = {
        slack-web = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.generics-sop
            hsPkgs.http-api-data
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }