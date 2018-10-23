{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "NumberSieves";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Melissa O'Neill, Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Number Theoretic Sieves:  primes, factorization, and Euler's Totient";
      description = "This package includes the Sieve of O'Neill and two generalizations of the Sieve of Eratosthenes.   The Sieve of O'Neill is a fully incremental primality sieve based on priority queues.  The other two are array based, and are not incremental.   One sieves the smallest prime factor,  and is useful if you want to factor a large quantity of small numbers.   The other sieves Euler's Totient,  which is the number of positive integers relatively prime and less than a given number.";
      buildType = "Simple";
    };
    components = {
      "NumberSieves" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }