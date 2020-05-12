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
      specVersion = "0";
      identifier = { name = "TypeIlluminator"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Olaf Chitil <O.Chitil@kent.ac.uk>";
      author = "Olaf Chitil";
      homepage = "http://www.cs.kent.ac.uk/people/staff/oc/TypeIlluminator/";
      url = "";
      synopsis = "TypeIlluminator is a prototype tool exploring debugging of type errors/";
      description = "TypeIlluminator is a prototype tool implementing the ideas presented in the paper\nCompositional Explanation of Types and Algorithmic Debugging of Type Errors.\nIt constructs the type explanation graph for programs written in a simple\nHaskell-like language and enables free navigation through the graph\nin various ways and algorithmic debugging.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "typeilluminator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }