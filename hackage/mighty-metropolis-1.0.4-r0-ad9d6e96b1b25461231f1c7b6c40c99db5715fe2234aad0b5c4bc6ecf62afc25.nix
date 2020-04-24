{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mighty-metropolis"; version = "1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/mighty-metropolis";
      url = "";
      synopsis = "The Metropolis algorithm.";
      description = "The classic Metropolis algorithm.\n\nWander around parameter space according to a simple spherical Gaussian\ndistribution.\n\nExports a 'mcmc' function that prints a trace to stdout, as well as a\n'metropolis' transition operator that can be used more generally.\n\n> import Numeric.MCMC.Metropolis\n>\n> rosenbrock :: [Double] -> Double\n> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 1 [0, 0] rosenbrock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."mcmc-types" or ((hsPkgs.pkgs-errors).buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mighty-metropolis" or ((hsPkgs.pkgs-errors).buildDepError "mighty-metropolis"))
            (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
            ];
          buildable = true;
          };
        "bnn" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mighty-metropolis" or ((hsPkgs.pkgs-errors).buildDepError "mighty-metropolis"))
            (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
            ];
          buildable = true;
          };
        };
      };
    }