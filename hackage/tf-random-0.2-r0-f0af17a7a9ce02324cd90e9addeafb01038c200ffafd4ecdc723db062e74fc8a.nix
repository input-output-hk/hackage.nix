{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "tf-random"; version = "0.2"; };
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
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.time)
          ];
        };
      };
    }