{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "slack";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhrosa@gmail.com";
        author = "Diony Rosa";
        homepage = "";
        url = "";
        synopsis = "Haskell API for interacting with Slack";
        description = "Visit https://api.slack.com/web in order to get your API token";
        buildType = "Simple";
      };
      components = {
        slack = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.http-conduit
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }