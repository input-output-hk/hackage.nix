{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "BiobaseTurner";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010,2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Import Turner RNA parameters";
      description = "A data structure for Mathews / Turner RNA and DNA energy\nparameters. This library currently only provides an importer,\nnot export functions. There are two reasons: (i) We currently\nhave no use-case where we need more than import facilities (ii)\nThe file structure is geared towards humans, not machines. If\nyou need to be able to export, send a mail.\n\nThis is the 2011 post-library split version, hence not\ndeprecated anymore.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.iteratee)
          (hsPkgs.split)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.PrimitiveArray)
        ];
      };
    };
  }