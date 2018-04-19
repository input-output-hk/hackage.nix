{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bricks-syntax";
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
        bricks-syntax = {
          depends  = [
            hsPkgs.base
            hsPkgs.bricks-internal
            hsPkgs.containers
            hsPkgs.either-list-functions
            hsPkgs.text
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.containers
              hsPkgs.doctest
              hsPkgs.either-list-functions
              hsPkgs.text
            ];
          };
          show = {
            depends  = [
              hsPkgs.base
              hsPkgs.bricks-internal
              hsPkgs.bricks-syntax
              hsPkgs.containers
              hsPkgs.either-list-functions
              hsPkgs.exceptions
              hsPkgs.hint
              hsPkgs.text
            ];
          };
        };
      };
    }