{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      aeson = false;
      hashable = false;
      deepseq = false;
      serialise = false;
    };
    package = {
      specVersion = "2.0";
      identifier = {
        name = "o-clock";
        version = "1.0.0.1";
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
      "library" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ] ++ pkgs.lib.optionals (flags.aeson) [
          (hsPkgs.aeson)
          (hsPkgs.text)
        ]) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (flags.serialise) (hsPkgs.serialise);
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
            (hsPkgs.gauge)
            (hsPkgs.tiempo)
            (hsPkgs.time-units)
          ] ++ pkgs.lib.optional (!flags.deepseq) (hsPkgs.deepseq);
        };
      };
    };
  }