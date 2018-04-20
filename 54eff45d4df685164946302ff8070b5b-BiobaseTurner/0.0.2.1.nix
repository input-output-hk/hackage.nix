{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4.0";
        identifier = {
          name = "BiobaseTurner";
          version = "0.0.2.1";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2010";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "";
        url = "";
        synopsis = "RNA folding data structures.";
        description = "Data structures and parsers for the Turner 2004 set of RNA parameters.\n- http://rna.urmc.rochester.edu/NNDB/index.html";
        buildType = "Simple";
      };
      components = {
        BiobaseTurner = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.primitive
            hsPkgs.FileManip
            hsPkgs.split
            hsPkgs.Biobase
            hsPkgs.HsTools
            hsPkgs.ParsecTools
            hsPkgs.PrimitiveArray
          ];
        };
      };
    }