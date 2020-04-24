{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "monte-carlo"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/hs-monte-carlo";
      url = "";
      synopsis = "A monad and transformer for Monte Carlo calculations.";
      description = "A monad and transformer for performing Monte Carlo\ncalculations. This monad carries and provides access to\na pseudo-random number generator. Internally, the monad\nmutates rather than copies the random gnerator state.  By\navoiding copies, it can deliver faster performance than\nmany pure random number implementations.  The package is\nbuilt around the facilities provided by the GNU Scientific\nLibrary (GSL).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gsl-random" or ((hsPkgs.pkgs-errors).buildDepError "gsl-random"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "monte-carlo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gsl-random" or ((hsPkgs.pkgs-errors).buildDepError "gsl-random"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }