{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "BiobaseTurner";
        version = "0.3.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Import Turner RNA parameters";
      description = "A data structure for Mathews / Turner RNA and DNA energy\nparameters. This library currently only provides an importer,\nnot export functions. There are two reasons: (i) We currently\nhave no use-case where we need more than import facilities (ii)\nThe file structure is geared towards humans, not machines. If\nyou need to be able to export, send a mail.\n\nNOTE This is rather fragile as some files use different index\nenumerations, which we handle rather... simplistically.\n\nIn principle, all parameters should be symmetric regarding the\nstem direction. However, there is one asymmetry case in\ndnastack.dh. We do not fix this problem as we do not change the\nsource files.";
      buildType = "Simple";
    };
    components = {
      "BiobaseTurner" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.repa)
          (hsPkgs.split)
          (hsPkgs.vector)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.PrimitiveArray)
        ];
      };
    };
  }