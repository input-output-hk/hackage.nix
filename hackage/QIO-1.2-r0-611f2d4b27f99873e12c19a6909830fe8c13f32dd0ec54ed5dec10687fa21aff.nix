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
      identifier = { name = "QIO"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexander.s.green@gmail.com";
      author = "Alexander S. Green";
      homepage = "http://www.cs.nott.ac.uk/~asg/QIO/";
      url = "";
      synopsis = "The Quantum IO Monad is a library for defining quantum computations in Haskell";
      description = "The Quantum IO Monad is a library for defining quantum computations in Haskell. It can be thought of as an embedded language within Haskell, and comes with functions for simulating the running of these quantum computations. The distribution contains many example computations written in QIO, including an implementation of Shor's algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }