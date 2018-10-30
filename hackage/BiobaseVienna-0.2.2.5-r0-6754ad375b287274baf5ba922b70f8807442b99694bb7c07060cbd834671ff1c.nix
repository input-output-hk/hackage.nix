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
        name = "BiobaseVienna";
        version = "0.2.2.5";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Import Vienna energy parameters";
      description = "Importer and Exporter for Vienna energy files. Allows\nconverting Turner parameter files to Vienna parameter files.\n\nThis is the 2011 post-library split version, hence not\ndeprecated anymore.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.containers)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.iteratee)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.vector)
          (hsPkgs.BiobaseTurner)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.PrimitiveArray)
        ];
      };
      exes = {
        "ViennaConverter" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }