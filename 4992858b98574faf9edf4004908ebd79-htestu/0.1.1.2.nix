{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      testknownrngs = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "htestu";
          version = "0.1.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "snailandmail@gmail.com";
        author = "Nikita Kartashov";
        homepage = "https://github.com/nkartashov/htestu";
        url = "";
        synopsis = "A library for testing correctness of pseudo random number generators in Haskell.";
        description = "HTestU is a library for testing correctness of presudo random number generators (PRNGs) written in Haskell.\nHTestU uses a library TestU01 based on a paper \"TestU01: A C Library for Empirical Testing of Random Number Generators\" by P. L'Ecuyer and R. Simard.\nBasically HTestU performs a wrapping of a member of the RandomGen typeclass (any reasonable PRNG can be made a member of it) and\nfeeds a wrapped generator into a C library which calls the wrapped generator to fill the buffer with pseudo random numbers and then\nperform tests on the generated numbers.\nHTestU offers three batteries: smallCrush, crush and bigCrush (as they were specified in TestU01 paper) and a number of\nstreaming functions which allow one to wrap the PRNG differently for the purpose of testing different patterns of PRNG usage.";
        buildType = "Simple";
      };
      components = {
        htestu = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
        exes = {
          runTestu = {
            depends  = if _flags.testknownrngs
              then [
                hsPkgs.base
                hsPkgs.htestu
                hsPkgs.random
                hsPkgs.tf-random
                hsPkgs.mwc-random
                hsPkgs.mersenne-random-pure64
                hsPkgs.primitive
              ]
              else [ hsPkgs.base ];
          };
        };
      };
    }