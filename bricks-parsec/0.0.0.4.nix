{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bricks-parsec";
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
        bricks-parsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.bricks-internal
            hsPkgs.bricks-syntax
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.text
          ];
        };
        tests = {
          cases = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.bricks-internal-test
              hsPkgs.bricks-parsec
              hsPkgs.bricks-rendering
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.hedgehog
              hsPkgs.parsec
              hsPkgs.text
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.doctest
              hsPkgs.parsec
              hsPkgs.text
            ];
          };
        };
      };
    }