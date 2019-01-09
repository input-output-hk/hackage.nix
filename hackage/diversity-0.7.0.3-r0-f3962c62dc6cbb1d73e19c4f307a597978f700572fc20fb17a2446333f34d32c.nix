{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "diversity"; version = "0.7.0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "https://github.com/GregorySchwartz/diversity";
      url = "";
      synopsis = "Return the diversity at each position by default for all sequences in a fasta file";
      description = "Find the diversity of a collection of entities, mainly for use with fasta sequences.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
            (hsPkgs.diversity)
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.fasta)
            (hsPkgs.pipes)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }