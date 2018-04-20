{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-pushbullet-client";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "Jacob Thomas Errington, 2017-2018";
        maintainer = "pushbullet-hs@mail.jerrington.me";
        author = "Jacob Thomas Errington";
        homepage = "";
        url = "";
        synopsis = "Bindings to the Pushbullet API using servant-client";
        description = "This library describes the Pushbullet API as a type, and uses servant-client\nto generate Haskell functions for accessing the API. A number of useful types\nare added so that dealing with raw JSON is avoided.";
        buildType = "Simple";
      };
      components = {
        servant-pushbullet-client = {
          depends  = [
            hsPkgs.pushbullet-types
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.http-api-data
            hsPkgs.http-client-tls
            hsPkgs.http-client
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.scientific
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.time
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }