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
      specVersion = "1.8";
      identifier = { name = "tf-random"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michał Pałka <michal.palka@chalmers.se>";
      author = "Michał Pałka <michal.palka@chalmers.se>";
      homepage = "";
      url = "";
      synopsis = "High-quality splittable pseudorandom number generator";
      description = "This package contains an implementation of a high-quality splittable pseudorandom number generator. The generator is based on a cryptographic hash function built on top of the ThreeFish block cipher. See the paper /Splittable Pseudorandom Number Generators Using Cryptographic Hashing/ by Claessen, Pałka for details and the rationale of the design.\n\nThe package provides the following:\n\n* A splittable PRNG that implements the standard 'System.Random.RandomGen' class.\n\n* The generator also implements an alternative version of the 'System.Random.TF.Gen.RandomGen' class (exported from \"System.Random.TF.Gen\"), which requires the generator to return pseudorandom integers from the full 32-bit range, and contains an n-way split function.\n\n* An alternative version of the @Random@ class is provided, which is linked to the new @RandomGen@ class, together with @Random@ instances for some integral types.\n\n* Two functions for initialising the generator with a non-deterministic seed: one using the system time, and one using the @\\/dev\\/urandom@ UNIX special file.\n\nThe package uses an adapted version of the reference C implementation of ThreeFish from the reference package of the Skein hash function (<https://www.schneier.com/skein.html>), originally written by Doug Whiting.\n\nPlease note that even though the generator provides very high-quality pseudorandom numbers, it has not been designed with cryptographic applications in mind.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      };
    }