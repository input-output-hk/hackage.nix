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
        name = "CMCompare";
        version = "0.0.1.4";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, Ivo L. Hofacker, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Ivo L. Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/cmcompare/";
      url = "";
      synopsis = "Infernal covariance model comparison";
      description = "Compares two Infernal covariance models. Returns the common\nMaxiMin score and the offending RNA sequence. High scores point\ntoward low discriminative power of the two models. Based on:\n\n\"Christian Höner zu Siederdissen, and Ivo L. Hofacker. 2010.\nDiscriminatory power of RNA family models. Bioinformatics 26,\nno. 18: 453–59\"\n\n<http://bioinformatics.oxfordjournals.org/content/26/18/i453.long>";
      buildType = "Simple";
    };
    components = {
      "CMCompare" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.BiobaseInfernal)
        ];
      };
      exes = {
        "CMCompare" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }