{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bricks";
          version = "0.0.0.2";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/bricks#readme";
        url = "";
        synopsis = "Bricks is a lazy functional language based on Nix.";
        description = "Bricks is a lazy functional language based on Nix.\nThis package provides parsing, rendering, and\nevaluation (forthcoming) for the Bricks language.";
        buildType = "Simple";
      };
      components = {
        "bricks" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.text
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.bricks
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "parsing" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.bricks
              hsPkgs.base
              hsPkgs.hedgehog
              hsPkgs.template-haskell
            ];
          };
          "rendering" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.bricks
              hsPkgs.base
              hsPkgs.hedgehog
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }