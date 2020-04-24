{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "learning-hmm"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mitsuhiro Nakamura";
      maintainer = "Mitsuhiro Nakamura <m.nacamura@gmail.com>";
      author = "Mitsuhiro Nakamura";
      homepage = "https://github.com/mnacamura/learning-hmm";
      url = "";
      synopsis = "Yet another library for hidden Markov models";
      description = "This library provides functions for the maximum likelihood\nestimation of discrete hidden Markov models. At present,\nonly Baum-Welch and Viterbi algorithms are implemented.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."logfloat" or ((hsPkgs.pkgs-errors).buildDepError "logfloat"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }