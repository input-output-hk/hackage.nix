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
        name = "chronograph";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "John W. Lato, 2012";
      maintainer = "jwlato@gmail.com";
      author = "John Lato";
      homepage = "";
      url = "";
      synopsis = "measure timings of data evaluation";
      description = "The 'Chronograph' data structure adds a measure field\nto an existing Haskell expression.  This field will be the\ntime necessary to evaluate the expression using an\narbitrary evaluation strategy (WHNF by default).\n\nChronograph preserves laziness, so that the work of\nperforming the evaluation is only done after the result is\ndemanded.\n\nIf you want to benchmark your program, you should look to\nother packages like Criterion that perform statistical\nanalysis of your results so you can determine how reliable\nthey are.  Chronograph just takes measurements, leaving\nthe interpretation entirely to you.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.thyme)
          (hsPkgs.vector-space)
        ];
      };
    };
  }