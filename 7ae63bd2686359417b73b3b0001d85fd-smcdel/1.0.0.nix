{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.23";
        identifier = {
          name = "smcdel";
          version = "1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "malvin@w4eg.eu";
        author = "Malvin Gattinger";
        homepage = "https://github.com/jrclogic/SMCDEL";
        url = "";
        synopsis = "Symbolic Model Checking for Dynamic Epistemic Logic";
        description = "See README.md and SMCDEL.pdf for references and documentation.";
        buildType = "Simple";
      };
      components = {
        smcdel = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.cudd
            hsPkgs.graphviz
            hsPkgs.HasCacBDD
            hsPkgs.lens
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.tagged
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          smcdel = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.smcdel
            ];
            build-tools = [
              hsPkgs.buildPackages.alex
              hsPkgs.buildPackages.happy
            ];
          };
          smcdel-web = {
            depends  = [
              hsPkgs.base
              hsPkgs.file-embed
              hsPkgs.scotty
              hsPkgs.HasCacBDD
              hsPkgs.js-jquery
              hsPkgs.smcdel
              hsPkgs.template-haskell
              hsPkgs.text
            ];
            build-tools = [
              hsPkgs.buildPackages.alex
              hsPkgs.buildPackages.happy
            ];
          };
        };
        tests = {
          translations = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.smcdel
            ];
          };
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.smcdel
            ];
          };
          nonS5 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.smcdel
            ];
          };
        };
        benchmarks = {
          bench-diningcrypto = {
            depends  = [
              hsPkgs.base
              hsPkgs.smcdel
              hsPkgs.time
            ];
          };
          bench-sumandproduct = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.smcdel
              hsPkgs.time
            ];
          };
          bench-muddychildren = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.smcdel
              hsPkgs.criterion
            ];
          };
        };
      };
    }