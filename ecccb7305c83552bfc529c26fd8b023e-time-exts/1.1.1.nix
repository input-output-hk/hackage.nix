{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16.0";
        identifier = {
          name = "time-exts";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014, Enzo Haussecker. All rights reserved.";
        maintainer = "Enzo Haussecker <ehaussecker@gmail.com>";
        author = "Enzo Haussecker <ehaussecker@gmail.com>";
        homepage = "https://github.com/enzoh/time-exts";
        url = "";
        synopsis = "Efficient Timestamps";
        description = "Extensions to the Haskell time library, providing efficient Unix, UTC, and local timestamps.";
        buildType = "Simple";
      };
      components = {
        time-exts = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.containers
            hsPkgs.convertible
            hsPkgs.deepseq
            hsPkgs.fclabels
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.time
            hsPkgs.timezone-olson
          ];
        };
        exes = {
          test-time-exts = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bindings-DSL
              hsPkgs.containers
              hsPkgs.convertible
              hsPkgs.deepseq
              hsPkgs.fclabels
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.time
              hsPkgs.timezone-olson
            ];
          };
        };
      };
    }