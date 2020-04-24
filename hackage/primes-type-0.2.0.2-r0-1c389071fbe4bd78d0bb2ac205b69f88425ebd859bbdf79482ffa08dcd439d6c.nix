{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "primes-type"; version = "0.2.0.2"; };
      license = "ISC";
      copyright = "2017 Ignat Insarov";
      maintainer = "kindaro@gmail.com";
      author = "Ignat Insarov";
      homepage = "https://github.com/kindaro/primes-type#readme";
      url = "";
      synopsis = "Type-safe prime numbers.";
      description = "This library provides type safe prime numbers. The idea is based upon the concept of a predicate type from type theory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "primes-type-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
            (hsPkgs."primes-type" or ((hsPkgs.pkgs-errors).buildDepError "primes-type"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "primes-type-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
            (hsPkgs."primes-type" or ((hsPkgs.pkgs-errors).buildDepError "primes-type"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }