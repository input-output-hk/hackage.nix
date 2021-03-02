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
      specVersion = "1.0";
      identifier = { name = "ProbabilityMonads"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kidd <haskell@randomhacks.net>";
      author = "Eric Kidd <haskell@randomhacks.net>";
      homepage = "";
      url = "";
      synopsis = "Probability distribution monads.";
      description = "Tools for random sampling, explicit enumeration of possible\noutcomes, and applying Bayes' rule.  Highly experimental,\nand subject to change.  In particular, the\nData.Probability API is rather poor and could stand an\noverhaul.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }