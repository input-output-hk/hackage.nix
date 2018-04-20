{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "augur";
          version = "2008.10.20";
        };
        license = "BSD-3-Clause";
        copyright = "2008, Lemmih";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "Lemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Program for renaming media files.";
        description = "Augur is a tool for parsing and renaming TV episodes. Examples:\n>  The.4400.S04E02.DSR.XviD-ORENJi.avi\n>   -> The 4400 - 4x02 - Fear Itself.avi\n>  24.S06E01.6AM.TO.7AM.PROPER.DVDRip.XviD-MEMETiC.avi\n>   -> 24 - 6x01 - Day 6: 6:00 AM - 7:00 AM.avi\nThe pretty printing format is configurable with the default being @%S - %sx%2e - %E.%l@.";
        buildType = "Simple";
      };
      components = {
        exes = {
          augur = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.HaXml
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.classify
            ];
          };
        };
      };
    }