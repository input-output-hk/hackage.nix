let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sde-solver"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."haskell-mpi" or (buildDepError "haskell-mpi"))
          (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."normaldistribution" or (buildDepError "normaldistribution"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }