{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "probability";
          version = "0.2.1";
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
        probability = {
          depends  = [
            hsPkgs.mtl
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
      };
    }