{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "BiobaseFasta";
        version = "0.0.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Iteratee-based FASTA parser";
      description = "Enumeratees for FASTA-handling and convenience functions. In a\ntypical application, the user should write an enumeratee to\nextract information to allow for efficient low-memory handling\nof queries.\n\nFacilities for fast, efficient linear scans are provided. These\nfunctions are not yet stable and could move to another library,\nif more data sources require efficient scans.\n\nThe library is, in general, in a \"preview\" state. In cases\nwhere you need to scan large FASTA files fast and with low\nmemory overhead, the enumeratees should, however, already be\nuseable enough.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.iteratee)
          (hsPkgs.iteratee-compress)
          (hsPkgs.transformers)
        ];
      };
      exes = { "Test" = {}; };
    };
  }