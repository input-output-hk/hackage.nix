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
      specVersion = "1.10";
      identifier = {
        name = "declarative";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/declarative";
      url = "";
      synopsis = "DIY Markov Chains.";
      description = "DIY Markov Chains.\n\nBuild composite Markov transition operators from existing ones for fun and\nprofit.\n\nA useful strategy is to hedge one's sampling risk by occasionally\ninterleaving a computationally-expensive transition (such as a gradient-based\nalgorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis\ntransitions.\n\n> transition = frequency [\n>     (9, metropolis 1.0)\n>   , (1, hamiltonian 0.05 20)\n>   ]\n\nAlternatively: sample consecutively using the same algorithm, but over a\nrange of different proposal distributions.\n\n> transition = concatAllT [\n>     slice 0.5\n>   , slice 1.0\n>   , slice 2.0\n>   ]\n\nOr just mix and match and see what happens!\n\n> transition =\n>   sampleT\n>     (sampleT (metropolis 0.5) (slice 0.1))\n>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))\n\nCheck the test suite for example usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mcmc-types)
          (hsPkgs.mwc-probability)
          (hsPkgs.mighty-metropolis)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.pipes)
          (hsPkgs.hasty-hamiltonian)
          (hsPkgs.speedy-slice)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-probability)
            (hsPkgs.declarative)
          ];
        };
      };
    };
  }