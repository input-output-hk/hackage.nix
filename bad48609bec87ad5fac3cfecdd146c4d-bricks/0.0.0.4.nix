{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bricks";
          version = "0.0.0.4";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/bricks#readme";
        url = "";
        synopsis = "Bricks is a lazy functional language based on Nix.";
        description = "Bricks is a lazy functional language based on Nix.\nThis package provides parsing, rendering, and\nevaluation for the Bricks language.";
        buildType = "Simple";
      };
      components = {
        "bricks" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bricks-internal
            hsPkgs.bricks-parsec
            hsPkgs.bricks-rendering
            hsPkgs.bricks-syntax
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.bricks-parsec
              hsPkgs.bricks-rendering
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.doctest
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          "evaluation" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks
              hsPkgs.bricks-internal
              hsPkgs.bricks-internal-test
              hsPkgs.bricks-parsec
              hsPkgs.bricks-rendering
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.hedgehog
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }