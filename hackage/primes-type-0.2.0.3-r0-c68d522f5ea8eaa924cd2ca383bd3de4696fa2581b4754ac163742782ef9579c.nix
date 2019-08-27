let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "primes-type"; version = "0.2.0.3"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."primes" or (buildDepError "primes"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        };
      tests = {
        "primes-type-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primes" or (buildDepError "primes"))
            (hsPkgs."primes-type" or (buildDepError "primes-type"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            ];
          };
        };
      benchmarks = {
        "primes-type-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primes" or (buildDepError "primes"))
            (hsPkgs."primes-type" or (buildDepError "primes-type"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }