{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "primes";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Sebastian Fischer";
      homepage = "http://github.com/sebfisch/primes";
      url = "";
      synopsis = "Efficient, purely functional generation of prime numbers";
      description = "This Haskell library provides an efficient lazy wheel sieve for\nprime generation ispired by \"Lazy wheel sieves and spirals of\nprimes\" by Colin Runciman and \"The Genuine Sieve of Eratosthenes\" by\nMelissa O'Neil.";
      buildType = "Simple";
    };
    components = {
      "primes" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }