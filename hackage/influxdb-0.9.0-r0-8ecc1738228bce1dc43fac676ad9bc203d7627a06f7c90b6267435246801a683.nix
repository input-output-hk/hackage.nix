{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      examples = false;
      aeson-070 = true;
      retry-050 = true;
      network-uri = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "influxdb";
        version = "0.9.0";
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
      "library" = {
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
        ] ++ (if flags.aeson-070
          then [
            (hsPkgs.aeson)
            (hsPkgs.scientific)
          ]
          else [ (hsPkgs.aeson) ])) ++ [
          (hsPkgs.retry)
        ]) ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      exes = {
        "influx-random-points" = {
          depends = [
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
          depends = [
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