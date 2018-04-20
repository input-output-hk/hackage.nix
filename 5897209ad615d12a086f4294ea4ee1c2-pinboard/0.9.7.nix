{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pinboard";
          version = "0.9.7";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Jon Schoning";
        maintainer = "jonschoning@gmail.com";
        author = "Jon Schoning";
        homepage = "https://github.com/jonschoning/pinboard";
        url = "";
        synopsis = "Access to the Pinboard API";
        description = "\nThe Pinboard API is a way to interact programatically with\nyour bookmarks, notes and other Pinboard data. This\nlibrary wraps the API exposing functions and data\nstructures suitable for usage in Haskell programs.\n";
        buildType = "Simple";
      };
      components = {
        pinboard = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.profunctors
            hsPkgs.random
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.pinboard
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.time
              hsPkgs.aeson
              hsPkgs.semigroups
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.unordered-containers
              hsPkgs.transformers
            ];
          };
        };
      };
    }