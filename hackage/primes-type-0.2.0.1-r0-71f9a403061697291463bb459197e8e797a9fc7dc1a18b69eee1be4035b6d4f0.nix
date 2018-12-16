{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "primes-type";
        version = "0.2.0.1";
      };
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
          (hsPkgs.base)
          (hsPkgs.primes)
        ];
      };
      tests = {
        "primes-type-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primes)
            (hsPkgs.primes-type)
            (hsPkgs.HTF)
          ];
        };
      };
    };
  }