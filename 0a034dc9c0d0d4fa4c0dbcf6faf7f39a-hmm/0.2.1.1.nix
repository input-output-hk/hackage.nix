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
      specVersion = "1.2";
      identifier = {
        name = "hmm";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "https://github.com/mikeizbicki/hmm";
      url = "";
      synopsis = "A hidden markov model library";
      description = "Data.HMM is a library for using Hidden Markov Models with Haskell.  Commonly used algoriths (i.e. the forward and backwards algorithms, Viterbi, and Baum-Welch) are implemented.  The best way to learn to use it is to visit the tutorial at http:\\/\\/izbicki.me\\/blog\\/using-hmms-in-haskell-for-bioinformatics.  The tutorial also includes performance benchmarks that you should be aware of.";
      buildType = "Simple";
    };
    components = {
      "hmm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.logfloat)
          (hsPkgs.data-memocombinators)
          (hsPkgs.list-extras)
          (hsPkgs.array)
        ];
      };
    };
  }