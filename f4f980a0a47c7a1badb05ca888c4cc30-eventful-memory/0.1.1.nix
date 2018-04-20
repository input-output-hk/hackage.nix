{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventful-memory";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "https://github.com/jdreaver/eventful#readme";
        url = "";
        synopsis = "In-memory implementations for eventful";
        description = "In-memory implementations for eventful";
        buildType = "Simple";
      };
      components = {
        eventful-memory = {
          depends  = [
            hsPkgs.base
            hsPkgs.eventful-core
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.stm
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventful-core
              hsPkgs.async
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.stm
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.eventful-test-helpers
            ];
          };
          style = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventful-core
              hsPkgs.async
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.stm
              hsPkgs.hlint
            ];
          };
        };
      };
    }