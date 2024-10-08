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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hasim"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Jochem Berndsen";
      maintainer = "jochem@functor.nl";
      author = "Jochem Berndsen";
      homepage = "http://huygens.functor.nl/hasim/";
      url = "";
      synopsis = "Process-Based Discrete Event Simulation library";
      description = "Hasim is a library for process-based Discrete Event\nSimulation in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }