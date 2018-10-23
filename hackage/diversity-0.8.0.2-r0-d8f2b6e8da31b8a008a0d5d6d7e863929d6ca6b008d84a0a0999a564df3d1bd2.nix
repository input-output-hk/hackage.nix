{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "diversity";
        version = "0.8.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "https://github.com/GregorySchwartz/diversity";
      url = "";
      synopsis = "Quantify the diversity of a population";
      description = "Find the diversity of a collection of entities, mainly for use with fasta sequences.";
      buildType = "Simple";
    };
    components = {
      "diversity" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.parsec)
          (hsPkgs.fasta)
          (hsPkgs.math-functions)
          (hsPkgs.scientific)
          (hsPkgs.random-shuffle)
          (hsPkgs.MonadRandom)
          (hsPkgs.data-ordlist)
        ];
      };
      exes = {
        "diversity" = {
          depends  = [
            (hsPkgs.diversity)
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.fasta)
            (hsPkgs.pipes)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }