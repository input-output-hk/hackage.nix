{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "influxdb";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Mitsutoshi Aoe";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/influxdb-haskell";
        url = "";
        synopsis = "Haskell client library for InfluxDB";
        description = "Haskell client library for InfluxDB";
        buildType = "Simple";
      };
      components = {
        influxdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.dlist
            hsPkgs.http-client
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.retry
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
        };
        exes = {
          influx-random-points = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.http-client
              hsPkgs.influxdb
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ];
          };
        };
      };
    }