{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flight-igc";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "phil.dejoux@blockscope.com";
        author = "Phil de Joux";
        homepage = "https://github.com/BlockScope/haskell-flight-igc#readme";
        url = "";
        synopsis = "A parser for IGC files.";
        description = "IGC is a waypoint file format from the International Gliding Commission of FAI. This haskell library can parse B records from these files.";
        buildType = "Simple";
      };
      components = {
        flight-igc = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        exes = {
          flight-igc = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.system-filepath
              hsPkgs.filemanip
              hsPkgs.raw-strings-qq
              hsPkgs.cmdargs
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.flight-igc
            ];
          };
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
              hsPkgs.flight-igc
            ];
          };
        };
      };
    }