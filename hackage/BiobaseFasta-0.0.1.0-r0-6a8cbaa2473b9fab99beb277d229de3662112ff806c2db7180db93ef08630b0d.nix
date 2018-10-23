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
        name = "BiobaseFasta";
        version = "0.0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "conduit-based FASTA parser";
      description = "Conduit-based handling of FASTA files. This library provides a\nstreaming interface. The user selects a window size, then\nhandles the window. For each window, the previous (past) window\nis available, in case some data sits on the boundary between\nwindows.\n\nFastaTool is a simple tool providing information on FASTA\nfiles, and allowing to extract sequences and subsequences.\n\nThe library is, in general, in a \"preview\" state. In cases\nwhere you need to scan large FASTA files fast and with low\nmemory overhead, the 'streamFasta' function, however, should\nalready be useable enough.";
      buildType = "Simple";
    };
    components = {
      "BiobaseFasta" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.biocore)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "FastaTool" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }