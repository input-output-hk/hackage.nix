{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "speedy-slice"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/speedy-slice";
      url = "";
      synopsis = "Speedy slice sampling.";
      description = "Speedy slice sampling.\n\nThis implementation of the slice sampling algorithm uses 'lens' as a means to\noperate over generic indexed traversable functors, so you can expect it to\nwork if your target function takes a list, vector, map, sequence, etc. as its\nargument.\n\nAdditionally you can sample over anything that's an instance of both 'Num' and\n'Variate', which is useful in the case of discrete parameters.\n\nExports a 'mcmc' function that prints a trace to stdout, a 'chain' function\nfor collecting results in memory, and a 'slice' transition operator that can\nbe used more generally.\n\n> import Numeric.MCMC.Slice\n> import Data.Sequence (Seq, index, fromList)\n>\n> bnn :: Seq Double -> Double\n> bnn xs = -0.5 * (x0 ^ 2 * x1 ^ 2 + x0 ^ 2 + x1 ^ 2 - 8 * x0 - 8 * x1) where\n>   x0 = index xs 0\n>   x1 = index xs 1\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 1 (fromList [0, 0]) bnn";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."mcmc-types" or ((hsPkgs.pkgs-errors).buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
            (hsPkgs."speedy-slice" or ((hsPkgs.pkgs-errors).buildDepError "speedy-slice"))
            ];
          buildable = true;
          };
        "bnn" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
            (hsPkgs."speedy-slice" or ((hsPkgs.pkgs-errors).buildDepError "speedy-slice"))
            ];
          buildable = true;
          };
        };
      };
    }