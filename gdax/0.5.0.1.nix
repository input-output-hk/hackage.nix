{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gdax";
          version = "0.5.0.1";
        };
        license = "MIT";
        copyright = "2017 Andrew Rademacher";
        maintainer = "Andrew Rademacher <andrewrademacher@icloud.com>";
        author = "Andrew Rademacher";
        homepage = "https://github.com/AndrewRademacher/gdax";
        url = "";
        synopsis = "API Wrapping for Coinbase's GDAX exchange.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gdax = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.base64-bytestring
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.vector
            hsPkgs.websockets
            hsPkgs.wreq
            hsPkgs.wuss
          ];
        };
        exes = {
          sandbox = {
            depends  = [
              hsPkgs.base
              hsPkgs.gdax
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.websockets
              hsPkgs.wuss
            ];
          };
        };
        tests = {
          test-gdax = {
            depends  = [
              hsPkgs.base
              hsPkgs.gdax
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
              hsPkgs.websockets
              hsPkgs.wuss
            ];
          };
        };
      };
    }