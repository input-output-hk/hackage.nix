{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "tomland";
        version = "0.5.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/tomland";
      url = "";
      synopsis = "Bidirectional TOML parser";
      description = "See README.md for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "play-tomland" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tomland)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "tomland-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-silver)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tomland)
            (hsPkgs.unordered-containers)
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover)
          ];
        };
      };
      benchmarks = {
        "tomland-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.htoml)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tomland)
          ];
        };
      };
    };
  }