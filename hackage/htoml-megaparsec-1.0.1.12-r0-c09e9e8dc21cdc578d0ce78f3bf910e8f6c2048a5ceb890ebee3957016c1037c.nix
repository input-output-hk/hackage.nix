{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "htoml-megaparsec";
        version = "1.0.1.12";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2016 Cies Breijs, 2017 Vanessa McHale";
      maintainer = "Vanessa McHale <vamchale@gmail.com>";
      author = "Cies Breijs, Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/htoml-megaparsec";
      url = "";
      synopsis = "Parser for TOML files";
      description = "TOML is an obvious and minimal format for config files.\nThis package provides a TOML parser\nbuilt with the Megaparsec.";
      buildType = "Simple";
    };
    components = {
      "htoml-megaparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.composition-prelude)
          (hsPkgs.deepseq)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
      tests = {
        "htoml-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.megaparsec)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.criterion)
            (hsPkgs.text)
          ];
        };
      };
    };
  }