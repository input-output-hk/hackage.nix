{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }