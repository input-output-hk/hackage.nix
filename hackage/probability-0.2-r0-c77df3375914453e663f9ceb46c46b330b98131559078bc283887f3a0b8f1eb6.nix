{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "probability";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Martin Erwig <erwig@eecs.oregonstate.edu>, Steve Kollmansberger";
      homepage = "http://darcs.haskell.org/probability";
      url = "";
      synopsis = "Probabilistic Functional Programming";
      description = "The Library allows exact computation with discrete random variables\nin terms of their distributions by using a monad.\nThe monad is similar to the List monad for non-deterministic computations,\nbut extends the List monad by a measure of probability.\nSmall interface to R plotting.";
      buildType = "Simple";
    };
    components = {
      "probability" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }