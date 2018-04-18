{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sde-solver";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nilsson.dd+code@gmail.com";
        author = "David Nilsson";
        homepage = "https://github.com/davnils/sde-solver";
        url = "";
        synopsis = "Distributed SDE solver";
        description = "This package contains utilities for solving SDE instances in various ways.\nBasically an 'SDE' instance is solved using some 'SDESolver' working with some distribution mechanism.\nResults are gathered at the end point of the specified interval.\n\nIncluded in the package are ways of doing distributed calculations over an MPI cluster,\nor optionally only using the local solver with built in parallelization.\nTwo SDE instances have been implemented; geometric brownian motion and the Langevin equation,\nsee the haddock documentation for an example.\n\nThe main interface is accessible through \"Numeric.DSDE\" which provides various way of solving generic problems.\nThis module supports either local or distributed calculations in the IO monad and gathering the results as a distribution.\nUnder the surface there is also a working pure implementation for monadic environments, using a pure Mersenne twister PRNG.\n\nInternally there are several abstractions used when dealing with each component building up a solution.\nGiven some 'SDE' and 'SDESolver' instances, it is also required to have some PRNG providing normally distributed numbers.\nThis has been implemented over some specific monads and only results of type 'Double'.\nAll of the internal components are written with polymorphism in mind, acting over some monad instance and generic result types in all cases.";
        buildType = "Simple";
      };
      components = {
        sde-solver = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.cereal-vector
            hsPkgs.ghc-prim
            hsPkgs.haskell-mpi
            hsPkgs.mersenne-random-pure64
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.normaldistribution
            hsPkgs.parallel
            hsPkgs.vector
          ];
        };
      };
    }