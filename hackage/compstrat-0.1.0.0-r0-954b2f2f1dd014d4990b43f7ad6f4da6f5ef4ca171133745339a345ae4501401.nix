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
      specVersion = "1.10";
      identifier = { name = "compstrat"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jkoppel@mit.edu";
      author = "James Koppel";
      homepage = "";
      url = "";
      synopsis = "Strategy combinators for compositional data types";
      description = "A library for strategic programming on compositional data types. See\n/The Essence of Strategic Programming/, <http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.104.5296&rep=rep1&type=pdf>,\nby Ralf Laemmel et al.\nStrategic programming is a way of allowing traversals to be written in a highly\ngeneric and composable fashion.\nThe names and general interface are modeled on the KURE library,\nbut this library tries to be as composable as the lens library.\nThe type of a\nstrategy combinator is the same as the /Vertical/ type\nthat ekmett proposed and rejected as an extension to the current\nlens library. A /Vertical/ is essentially a monadic traversal. This hence\ncould potentially be merged with the lens library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }