{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-examples = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mcpi";
          version = "0.0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "dburke.gw@gmail.com";
        author = "Douglas Burke (dburke.gw@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Connect to MineCraft running on a Raspberry PI.";
        description = "The MineCraft edition for Raspberry PI comes with a Java and\nPython API.\n\nThis is a *very* basic, and *incomplete* Haskell version. I\nfully expect everything to change in later versions.\n\nTwo very simple examples are included in the examples/ directory,\nas well as a way to interact with MineCraft directly.\n\nPlease see the TODO file in the source code for an incomplete\nlist of possible changes.";
        buildType = "Simple";
      };
      components = {
        mcpi = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
        exes = {
          flatten = {
            depends  = [
              hsPkgs.base
              hsPkgs.mcpi
              hsPkgs.transformers
            ];
          };
          freefall = {
            depends  = [
              hsPkgs.base
              hsPkgs.mcpi
              hsPkgs.transformers
            ];
          };
          hmcpi = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.pipes
            ];
          };
          isongold = {
            depends  = [
              hsPkgs.base
              hsPkgs.mcpi
              hsPkgs.transformers
            ];
          };
        };
      };
    }