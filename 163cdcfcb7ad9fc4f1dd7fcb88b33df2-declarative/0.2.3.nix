{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "declarative";
          version = "0.2.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jared@jtobin.ca";
        author = "Jared Tobin";
        homepage = "http://github.com/jtobin/declarative";
        url = "";
        synopsis = "DIY Markov Chains.";
        description = "This package presents a simple combinator language for Markov transition\noperators that are useful in MCMC.\n\nAny transition operators sharing the same stationary distribution and obeying\nthe Markov and reversibility properties can be combined in a couple of ways,\nsuch that the resulting operator preserves the stationary distribution and\ndesirable properties amenable for MCMC.\n\nWe can deterministically concatenate operators end-to-end, or sample from\na collection of them according to some probability distribution.  See\n<http://www.stat.umn.edu/geyer/f05/8931/n1998.pdf Geyer, 2005> for details.\n\nA useful strategy is to hedge one's 'sampling risk' by occasionally\ninterleaving a computationally-expensive transition (such as a gradient-based\nalgorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis\ntransitions.\n\n> transition = frequency [\n>     (9, metropolis 1.0)\n>   , (1, hamiltonian 0.05 20)\n>   ]\n\nAlternatively: sample consecutively using the same algorithm, but over a\nrange of different proposal distributions.\n\n> transition = concatAllT [\n>     slice 0.5\n>   , slice 1.0\n>   , slice 2.0\n>   ]\n\nOr just mix and match and see what happens!\n\n> transition =\n>   sampleT\n>     (sampleT (metropolis 0.5) (slice 0.1))\n>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))\n\nCheck the test suite for example usage.";
        buildType = "Simple";
      };
      components = {
        declarative = {
          depends  = [
            hsPkgs.base
            hsPkgs.mcmc-types
            hsPkgs.mwc-probability
            hsPkgs.mighty-metropolis
            hsPkgs.lens
            hsPkgs.primitive
            hsPkgs.pipes
            hsPkgs.hasty-hamiltonian
            hsPkgs.speedy-slice
            hsPkgs.transformers
          ];
        };
        tests = {
          rosenbrock = {
            depends  = [
              hsPkgs.base
              hsPkgs.mwc-probability
              hsPkgs.declarative
            ];
          };
        };
      };
    }