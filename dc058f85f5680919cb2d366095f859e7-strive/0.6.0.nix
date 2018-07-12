{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strive";
          version = "0.6.0";
        };
        license = "MIT";
        copyright = "2014 Taylor Fausak <taylor@fausak.me>";
        maintainer = "taylor@fausak.me";
        author = "Taylor Fausak";
        homepage = "http://taylor.fausak.me/strive/";
        url = "";
        synopsis = "A Haskell client for the Strava V3 API.";
        description = "A Haskell client for the <http://strava.github.io/api/ Strava V3 API>.";
        buildType = "Simple";
      };
      components = {
        "strive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.Glob
            hsPkgs.gpolyline
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.regex-compat
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.transformers
          ] ++ [ hsPkgs.text ];
        };
        tests = {
          "readme" = {
            depends  = [
              hsPkgs.base
              hsPkgs.strive
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.markdown-unlit
              hsPkgs.time
            ];
          };
          "hlint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }