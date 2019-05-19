{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "influxdb"; version = "1.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2019 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <me@maoe.name>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/influxdb-haskell";
      url = "";
      synopsis = "Haskell client library for InfluxDB";
      description = "@influxdb@ is a Haskell client library for InfluxDB.\n\nSee \"Database.InfluxDB\" for a quick start guide.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.foldl)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.optional-args)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "influx-random-points" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.http-client)
            (hsPkgs.influxdb)
            (hsPkgs.lens)
            (hsPkgs.mwc-random)
            (hsPkgs.optional-args)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        "influx-write-udp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.influxdb)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.time)
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.influxdb)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }