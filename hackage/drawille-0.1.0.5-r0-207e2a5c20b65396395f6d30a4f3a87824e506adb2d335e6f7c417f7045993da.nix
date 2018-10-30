{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      no-tests = false;
      examples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drawille";
        version = "0.1.0.5";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Pedro Yamada";
      maintainer = "Pedro Yamada <tacla.yamada@gmail.com>";
      author = "Pedro Yamada <tacla.yamada@gmail.com>";
      homepage = "https://github.com/yamadapc/haskell-drawille";
      url = "";
      synopsis = "A port of asciimoo's drawille to haskell";
      description = "A tiny library for drawing with braille.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "senoid" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AC-Angle)
          ];
        };
        "image2term" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.friday)
            (hsPkgs.terminal-size)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = pkgs.lib.optionals (!flags.no-tests) [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }