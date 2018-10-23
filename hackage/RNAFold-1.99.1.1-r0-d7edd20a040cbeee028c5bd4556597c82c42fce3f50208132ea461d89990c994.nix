{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = true; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "RNAFold";
        version = "1.99.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al (ViennaRNA), 2010-2012";
      homepage = "http://www.tbi.univie.ac.at/~choener/adpfusion";
      url = "";
      synopsis = "RNA secondary structure prediction";
      description = "RNAfold v2 using the ADPfusion library. The RNAfold algorithm\nis used to determine how fast we can be compared to a highly\noptimized C program.\n\nIf possible, build using the GHC llvm backend, and GHC-7.2.2.\nGHC-7.4.x produces very bad code on my system, please benchmark\nusing 7.2.2.\n\nNOTE I'd like to rename this package to RNAfold, like the C\nimplementation. Do not install \"globally\", especially if you\nnormally use RNAfold from the ViennaRNA package, for obvious\nreasons.\n\nNOTE I am reluctant to call this v2 for now.";
      buildType = "Simple";
    };
    components = {
      "RNAFold" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.strict)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.BiobaseVienna)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.ADPfusion)
        ];
      };
      exes = { "RNAFold" = {}; };
    };
  }