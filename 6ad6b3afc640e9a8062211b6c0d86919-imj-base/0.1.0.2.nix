{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "imj-base";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 - 2018 Olivier Sohn";
        maintainer = "olivier.sohn@gmail.com";
        author = "Olivier Sohn";
        homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-base/README.md";
        url = "";
        synopsis = "Game engine with geometry, easing, animated text, delta rendering.";
        description = "Game engine that is intended to help implementing games\nfor the terminal.\n\nContains types and classes about discrete and continuous\ngeometry, collision detection, animated UIs,\nanimated colored text and easing functions.\n\nAlso contains a renderer (delta-renderer) optimized to avoid\nscreen tearing in the terminal.";
        buildType = "Simple";
      };
      components = {
        imj-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.imj-prelude
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.random
            hsPkgs.terminal-size
            hsPkgs.text
            hsPkgs.time
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
        exes = {
          imj-base-examples-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.imj-base
              hsPkgs.imj-prelude
              hsPkgs.time
            ];
          };
        };
        tests = {
          imj-base-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.imj-base
              hsPkgs.imj-prelude
              hsPkgs.time
            ];
          };
        };
      };
    }