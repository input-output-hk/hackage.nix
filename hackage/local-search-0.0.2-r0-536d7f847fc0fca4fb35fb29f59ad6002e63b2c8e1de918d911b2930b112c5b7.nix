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
      specVersion = "1.2";
      identifier = { name = "local-search"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2010 Richard Senington";
      maintainer = "sc06r2s@leeds.ac.uk";
      author = "Richard Senington & David Duke";
      homepage = "http://www.comp.leeds.ac.uk/sc06r2s/Projects/HaskellLocalSearch";
      url = "";
      synopsis = "A first attempt at generalised local search within Haskell, for applications in combinatorial optimisation. ";
      description = "This library represents a first attempt at creating a generalised library for\nlocal (non-exhaustive) search in Haskell.  It is based on work presented to\nIFL2010, a draft of which is currently available on the homepage. The library\nmodels local search space using a rose tree, with child nodes forming the\nneighbourhood of any solution. The tree can then be transformed by various\ncombinators to implement different searching strategies; the result is then\n\"navigated\" to yield a sequence of solutions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }