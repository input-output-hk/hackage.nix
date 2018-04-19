{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-hypergeometric";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015 Sam Rijs\n2005 Robert Kern\n1998 Ivan Frohne";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/random-hypergeometric";
        url = "";
        synopsis = "Random variate generation from hypergeometric distributions";
        description = "The Hypergeometric distribution.  This is the discrete probability\ndistribution that measures the probability of /k/ successes in /l/\ntrials, without replacement, from a finite population.";
        buildType = "Simple";
      };
      components = {
        random-hypergeometric = {
          depends  = [
            hsPkgs.base
            hsPkgs.random-fu
            hsPkgs.math-functions
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.random-fu
              hsPkgs.math-functions
              hsPkgs.mwc-random
              hsPkgs.vector
              hsPkgs.QuickCheck
              hsPkgs.cabal-test-quickcheck
            ];
          };
        };
      };
    }