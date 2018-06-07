{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-bytestring = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "parsestar";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mgajda@gwdg.de";
        author = "Michal J. Gajda";
        homepage = "";
        url = "";
        synopsis = "NMR-STAR file format parser.";
        description = "Parser for NMR-STAR data used by BMRB databank repository\nof biological nuclear magnetic resonance data.";
        buildType = "Simple";
      };
      components = {
        parsestar = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.bytestring-mmap
            hsPkgs.bytestring-show
            hsPkgs.bytestring-nums
            hsPkgs.deepseq
            hsPkgs.derive
            hsPkgs.zlib
            hsPkgs.containers
          ] ++ [ hsPkgs.bytestring ];
          build-tools = [
            hsPkgs.buildPackages.happy
          ];
        };
        exes = {
          PrintCSTypes = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.parsestar
            ];
          };
          MergeCoord = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.parsestar
            ];
          };
          TestChemShifts = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.parsestar
            ];
          };
          STAR2Fasta = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.parsestar
            ];
          };
        };
      };
    }