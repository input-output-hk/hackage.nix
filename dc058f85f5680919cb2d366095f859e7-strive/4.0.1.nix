{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strive";
          version = "4.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/strive#readme";
        url = "";
        synopsis = "A client for the Strava V3 API.";
        description = "Strive is a client for the Strava V3 API.";
        buildType = "Simple";
      };
      components = {
        strive = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.gpolyline
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          readme = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.markdown-unlit
              hsPkgs.strive
              hsPkgs.time
            ];
          };
        };
      };
    }