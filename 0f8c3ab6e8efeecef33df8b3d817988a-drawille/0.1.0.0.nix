{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "drawille";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Pedro Yamada <tacla.yamada@gmail.com>";
        author = "Pedro Yamada <tacla.yamada@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A port of asciimoo's drawille to haskell";
        description = "A tiny library for drawing with braille.";
        buildType = "Simple";
      };
      components = {
        drawille = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          senoid = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.AC-Angle
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.containers
            ];
          };
        };
      };
    }