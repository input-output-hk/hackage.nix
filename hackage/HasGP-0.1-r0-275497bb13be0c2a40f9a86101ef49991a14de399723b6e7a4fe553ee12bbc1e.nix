{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HasGP"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2011 Sean Holden";
      maintainer = "sbh11@cl.cam.ac.uk";
      author = "Sean B. Holden";
      homepage = "http://www.cl.cam.ac.uk/~sbh11/HasGP";
      url = "http://www.cl.cam.ac.uk/~sbh11/HasGP/HasGP-0.1.tar.gz";
      synopsis = "A Haskell library for inference using Gaussian processes";
      description = "A Haskell library implementing algorithms for supervised learning, roughly corresponding to chapters 1 to 5 of \"Gaussian Processes for Machine Learning\" by Carl Rasmussen and Christopher Williams, The MIT Press 2006. In particular, algorithms are provides for regression and for two-class classification using either the Laplace or EP approximation.    ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-special" or (errorHandler.buildDepError "hmatrix-special"))
          ];
        buildable = true;
        };
      };
    }