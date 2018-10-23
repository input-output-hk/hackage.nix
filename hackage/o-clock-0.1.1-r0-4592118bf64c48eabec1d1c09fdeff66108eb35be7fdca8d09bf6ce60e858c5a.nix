{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "o-clock";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/o-clock";
      url = "";
      synopsis = "Type-safe time library.";
      description = "See README.md for details.";
      buildType = "Simple";
    };
    components = {
      "o-clock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
      exes = {
        "play-o-clock" = {
          depends  = [
            (hsPkgs.o-clock)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "o-clock-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.o-clock)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            (hsPkgs.type-spec)
          ];
        };
        "o-clock-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
          build-tools = [
            (hsPkgs.buildPackages.doctest)
          ];
        };
        "readme-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.o-clock)
            (hsPkgs.markdown-unlit)
          ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit)
          ];
        };
      };
      benchmarks = {
        "o-clock-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.o-clock)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.tiempo)
            (hsPkgs.time-units)
          ];
        };
      };
    };
  }