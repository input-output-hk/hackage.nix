{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "influxdb";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014-2017 Mitsutoshi Aoe";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/influxdb-haskell";
        url = "";
        synopsis = "Haskell client library for InfluxDB";
        description = "@influxdb@ is a Haskell client library for InfluxDB.\n\nRead \"Database.InfluxDB\" for a quick start guide.";
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
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.network
            hsPkgs.optional-args
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
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