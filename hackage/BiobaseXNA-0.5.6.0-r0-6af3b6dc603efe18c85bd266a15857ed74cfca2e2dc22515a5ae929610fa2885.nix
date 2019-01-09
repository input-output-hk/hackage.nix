{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4.0";
      identifier = { name = "BiobaseXNA"; version = "0.5.6.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Efficient RNA/DNA representations";
      description = "This is a base library for bioinformatics with emphasis on RNA\nand DNA primary structure and related tools. Provided are\nefficient encodings for short sequences, as required by RNA\nfolding tools. Extended RNA secondary structures can be\nrepresented as well.\n\nContains data from:\n\nFrequency and isostericity of RNA base pairs\n\nJesse Stombaugh, Craig L. Zirbel, Eric Westhof, and Neocles B. Leontis\n\nNucl. Acids Res. (2009)\n\n<http://dx.crossref.org/10.1093%2Fnar%2Fgkp011>\n\n\n\nChanges since 0.5.5.0\n\n* isostericity for the 6 \"missing\" classes\n\nChanges since 0.5.4.0\n\n* tuple-like updating (updL, updR, updP, updT)\n\n* baseP pair selection\n\n* isostericity data, loaded from csv files\n\nChanges since 0.5.3.0\n\n* tuple-like (selN) selection of basepairing elements (baseL,baseR,baseT)\n\nChanges since 0.5.1.0\n\n* bonusTable for constrained folding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.csv)
          (hsPkgs.file-embed)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.tuple)
          (hsPkgs.vector)
          (hsPkgs.PrimitiveArray)
          ];
        };
      };
    }