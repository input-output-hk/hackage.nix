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
      specVersion = "1.8";
      identifier = {
        name = "DifferentialEvolution";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Global optimization using Differential Evolution";
      description = "Plain Differential Evolution algorithm for optimizing\nreal-valued functions. For further info, see\nDifferential evolution: a practical approach\nto global optimization By Kenneth V. Price,\nRainer M. Storn, and Jouni A. Lampinen.\n\nThis Library is optimized and should achieve runtimes\nwith factor of 2 from c.\nFor optimal performance, pay some attention to\nrts memory parameters.\n\nExample in GHCi:\n\n>import Data.Vector.Unboxed as VUB\n>import Numeric.Optimization.Algorithms.DifferentialEvolution\n>\n>let fitness = VUB.sum . VUB.map (*2)\n>\n>de (defaultParams fitness ((VUB.replicate 60 0), (VUB.replicate 60 0)))";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mwc-random)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
          (hsPkgs.mtl)
          (hsPkgs.fclabels)
          (hsPkgs.vector)
          (hsPkgs.parallel)
        ];
      };
    };
  }