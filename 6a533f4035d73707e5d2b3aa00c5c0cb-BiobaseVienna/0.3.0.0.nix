{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "BiobaseVienna";
          version = "0.3.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2010-2013";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Import Vienna energy parameters";
        description = "Importer and Exporter for Vienna energy files. Allows\nconverting Turner parameter files to Vienna parameter files.";
        buildType = "Simple";
      };
      components = {
        BiobaseVienna = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.BiobaseTurner
            hsPkgs.BiobaseXNA
            hsPkgs.PrimitiveArray
          ];
        };
      };
    }