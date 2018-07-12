{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "augur";
          version = "2008.11.17";
        };
        license = "BSD-3-Clause";
        copyright = "2008, Lemmih";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "Lemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Renaming media collections in a breeze.";
        description = "Augur is a tool for parsing and renaming TV episodes. It can recognise a wide\nvariety of formats, like:\n\n> The.4400.S04E02.DSR.XviD-ORENJi.avi                 -> The 4400 - 4x02 - Fear Itself.avi\n> 24.S06E01.6AM.TO.7AM.PROPER.DVDRip.XviD-MEMETiC.avi -> 24 - 6x01 - Day 6: 6:00 AM - 7:00 AM.avi\n\nDates are also supported as the episode number.\nThe pretty printing format is configurable with the default being @%S - %sx%2e - %E.%l@.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "augur" = {
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