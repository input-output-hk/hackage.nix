{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "primes";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastian Fischer";
        author = "Sebastian Fischer";
        homepage = "http://github.com/sebfisch/primes";
        url = "";
        synopsis = "Efficient, purely functional generation of prime numbers";
        description = "This Haskell library provides an efficient lazy wheel sieve for\nprime generation inspired by /Lazy wheel sieves and spirals of/\n/primes/ by Colin Runciman and /The Genuine Sieve of Eratosthenes/\nby Melissa O'Neil.";
        buildType = "Simple";
      };
      components = {
        primes = {
          depends  = [ hsPkgs.base ];
        };
      };
    }