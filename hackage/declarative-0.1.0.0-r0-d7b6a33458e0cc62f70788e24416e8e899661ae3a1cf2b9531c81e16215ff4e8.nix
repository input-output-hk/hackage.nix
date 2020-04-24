{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "declarative"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/declarative";
      url = "";
      synopsis = "DIY Markov Chains.";
      description = "DIY Markov Chains.\n\nBuild composite Markov transition operators from existing ones for fun and\nprofit.\n\nA useful strategy is to hedge one's sampling risk by occasionally\ninterleaving a computationally-expensive transition (such as a gradient-based\nalgorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis\ntransitions.\n\n> transition = frequency [\n>     (9, metropolis 1.0)\n>   , (1, hamiltonian 0.05 20)\n>   ]\n\nAlternatively: sample consecutively using the same algorithm, but over a\nrange of different proposal distributions.\n\n> transition = concatAllT [\n>     slice 0.5\n>   , slice 1.0\n>   , slice 2.0\n>   ]\n\nOr just mix and match and see what happens!\n\n> transition =\n>   sampleT\n>     (sampleT (metropolis 0.5) (slice 0.1))\n>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))\n\nCheck the test suite for example usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mcmc-types" or ((hsPkgs.pkgs-errors).buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
          (hsPkgs."mighty-metropolis" or ((hsPkgs.pkgs-errors).buildDepError "mighty-metropolis"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."hasty-hamiltonian" or ((hsPkgs.pkgs-errors).buildDepError "hasty-hamiltonian"))
          (hsPkgs."speedy-slice" or ((hsPkgs.pkgs-errors).buildDepError "speedy-slice"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
            (hsPkgs."declarative" or ((hsPkgs.pkgs-errors).buildDepError "declarative"))
            ];
          buildable = true;
          };
        };
      };
    }