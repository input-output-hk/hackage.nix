{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "BiobaseBlast";
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "BLAST-related tools";
      description = "This library contains BLAST-related functionality. For now,\nthis library is very limited (and Ketil Malde provides other\nBLAST functionality anyway).\n\nWe do provide parsers for BLOSUM and PAM matrices.\n\nThe matrices can be found here:\n<ftp://ftp.ncbi.nih.gov/blast/matrices/>";
      buildType = "Simple";
    };
    components = {
      "BiobaseBlast" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.BiobaseXNA)
        ];
      };
    };
  }