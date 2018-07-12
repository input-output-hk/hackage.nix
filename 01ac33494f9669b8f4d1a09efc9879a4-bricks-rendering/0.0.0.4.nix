{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bricks-rendering";
          version = "0.0.0.4";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/bricks#readme";
        url = "";
        synopsis = "...";
        description = "...";
        buildType = "Simple";
      };
      components = {
        "bricks-rendering" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bricks-internal
            hsPkgs.bricks-syntax
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        tests = {
          "cases" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.bricks-internal-test
              hsPkgs.bricks-rendering
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.hedgehog
              hsPkgs.template-haskell
              hsPkgs.text
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.doctest
              hsPkgs.text
            ];
          };
        };
      };
    }