{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      examples = false;
      aeson-070 = true;
      retry-040 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "influxdb";
        version = "0.5.0";
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
      "influxdb" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.dlist)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ] ++ (if flags.aeson-070
          then [
            (hsPkgs.aeson)
            (hsPkgs.scientific)
          ]
          else [
            (hsPkgs.aeson)
          ])) ++ (if flags.retry-040
          then [
            (hsPkgs.exceptions)
            (hsPkgs.retry)
          ]
          else [
            (hsPkgs.lifted-base)
            (hsPkgs.retry)
          ]);
      };
      exes = {
        "influx-random-points" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.influxdb)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.HUnit)
            (hsPkgs.influxdb)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }