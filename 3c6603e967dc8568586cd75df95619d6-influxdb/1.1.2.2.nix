{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      http-client-05 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "influxdb";
          version = "1.1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014-2017 Mitsutoshi Aoe";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/influxdb-haskell";
        url = "";
        synopsis = "Haskell client library for InfluxDB";
        description = "Haskell client library for InfluxDB";
        buildType = "Simple";
      };
      components = {
        "influxdb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.containers
            hsPkgs.foldl
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.network
            hsPkgs.optional-args
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ (if _flags.http-client-05
            then [ hsPkgs.http-client ]
            else [
              hsPkgs.data-default-class
              hsPkgs.http-client
            ]);
        };
        exes = {
          "influx-random-points" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.foldl
              hsPkgs.http-client
              hsPkgs.influxdb
              hsPkgs.lens
              hsPkgs.mwc-random
              hsPkgs.optional-args
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ];
          };
          "influx-write-udp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.influxdb
              hsPkgs.lens
              hsPkgs.network
              hsPkgs.time
            ];
          };
        };
        tests = {
          "test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-client
              hsPkgs.HUnit
              hsPkgs.influxdb
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }