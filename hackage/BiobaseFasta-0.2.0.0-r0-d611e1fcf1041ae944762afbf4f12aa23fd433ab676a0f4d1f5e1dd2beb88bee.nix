{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "BiobaseFasta"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011-2018";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Florian Eggenhofer";
      homepage = "https://github.com/choener/BiobaseFasta";
      url = "";
      synopsis = "streaming FASTA parser";
      description = "Stream-based handling of FASTA files. The user selects a window\nsize, the library then handles the window. For each window, the\nprevious (past) window is available, in case some data sits on\nthe boundary between windows.\n\nFastaTool is a simple tool providing information on FASTA\nfiles, and allowing to extract sequences and subsequences.\n\nGreg Schwartz' <http://hackage.haskell.org/package/fasta>\npackage is a lot more complete. This one is mostly tailored to\nmy usage requirements (and may at some point use his library).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.lens)
          (hsPkgs.deepseq)
          (hsPkgs.BiobaseTypes)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.resourcet)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-silver)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.BiobaseFasta)
            ];
          };
        };
      };
    }