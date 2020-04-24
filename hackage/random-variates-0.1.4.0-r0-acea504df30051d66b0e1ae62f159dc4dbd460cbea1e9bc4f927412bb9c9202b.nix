{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "random-variates"; version = "0.1.4.0"; };
      license = "MIT";
      copyright = "(c) 2015, Keynan James Pratt";
      maintainer = "Keynan James Pratt <keynan.pratt@gmail.com>";
      author = "Keynan James Pratt <keynan.pratt@gmail.com>";
      homepage = "https://bitbucket.org/kpratt/random-variate";
      url = "";
      synopsis = "\"Uniform RNG => Non-Uniform RNGs\"";
      description = "\"Collection of transforms uniform random number generators (RNGs) into any of a dozen common RNGs. Each presenting several common interfaces. Additionally Empirical distributions can be sampled from and tested (chi-squared) against theoretical distributions.\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."reinterpret-cast" or ((hsPkgs.pkgs-errors).buildDepError "reinterpret-cast"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "Gen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random-variates" or ((hsPkgs.pkgs-errors).buildDepError "random-variates"))
            ];
          buildable = true;
          };
        };
      tests = {
        "vis" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random-variates" or ((hsPkgs.pkgs-errors).buildDepError "random-variates"))
            ];
          buildable = true;
          };
        "units" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random-variates" or ((hsPkgs.pkgs-errors).buildDepError "random-variates"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }