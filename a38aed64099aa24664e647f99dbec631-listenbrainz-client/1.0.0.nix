{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "listenbrainz-client";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Ollie Charles";
        homepage = "https://github.com/ocharles/listenbrainz-client";
        url = "";
        synopsis = "A client library to the ListenBrainz project";
        description = "";
        buildType = "Simple";
      };
      components = {
        listenbrainz-client = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.free
            hsPkgs.freer-effects
            hsPkgs.http-client
            hsPkgs.kan-extensions
            hsPkgs.mtl
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }