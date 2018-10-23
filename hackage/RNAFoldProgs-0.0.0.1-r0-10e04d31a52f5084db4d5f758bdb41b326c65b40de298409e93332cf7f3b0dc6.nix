{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4.0";
      identifier = {
        name = "RNAFoldProgs";
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al. (ViennaRNA package)";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al. (ViennaRNA package)";
      homepage = "";
      url = "";
      synopsis = "RNA secondary structure folding";
      description = "RNA secondary structure following \"Fast Folding and Comparison\nof RNA Secondary Structures, Hofacker et al., 1994\". Uses the\nTurner 2004 parameter set. The algorithm work on an algebraic\nring structure that is instanciated as required. This\nprelimenary release contains the minimum-free energy version\nonly.\n\n- Do not expect good runtimes with anything less than\n6.13.201008xx. The newest head produces an executable roughly\n20x faster than GHC 6.12.3.\n- Bugs are likely present in this algorithm. If you find one,\nplease send me a mail.\n- One goal is to get the vector library to optimise the loops\n(fold's) in such a way as to get performance close to the\nViennaRNA package. Right now, we are about 15x slower.\n- Works well with -Odph, -fllvm (llvm is about 70% faster than\n-fasm)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsRNAFold" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.Biobase)
            (hsPkgs.BiobaseVienna)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.RNAFold)
          ];
        };
        "hsRNAEval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.split)
            (hsPkgs.Biobase)
            (hsPkgs.RNAFold)
          ];
        };
      };
    };
  }