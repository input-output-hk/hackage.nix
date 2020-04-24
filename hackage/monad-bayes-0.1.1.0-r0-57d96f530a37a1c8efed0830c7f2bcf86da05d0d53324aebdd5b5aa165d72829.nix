{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "monad-bayes"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2015-2020 Adam Scibior";
      maintainer = "leonhard.markert@tweag.io";
      author = "Adam Scibior <adscib@gmail.com>";
      homepage = "http://github.com/tweag/monad-bayes#readme";
      url = "";
      synopsis = "A library for probabilistic programming.";
      description = "A library for probabilistic programming using probability monads. The\nemphasis is on composition of inference algorithms implemented in\nterms of monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
          (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
          (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
          (hsPkgs."monad-coroutine" or ((hsPkgs.pkgs-errors).buildDepError "monad-coroutine"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
            (hsPkgs."monad-bayes" or ((hsPkgs.pkgs-errors).buildDepError "monad-bayes"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "monad-bayes-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
            (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
            (hsPkgs."monad-bayes" or ((hsPkgs.pkgs-errors).buildDepError "monad-bayes"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ssm-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."monad-bayes" or ((hsPkgs.pkgs-errors).buildDepError "monad-bayes"))
            ];
          buildable = true;
          };
        "speed-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
            (hsPkgs."monad-bayes" or ((hsPkgs.pkgs-errors).buildDepError "monad-bayes"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }