{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "primes-type";
          version = "0.2.0.2";
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
        primes-type = {
          depends  = [
            hsPkgs.base
            hsPkgs.primes
            hsPkgs.deepseq
          ];
        };
        tests = {
          primes-type-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.primes
              hsPkgs.primes-type
              hsPkgs.HTF
            ];
          };
        };
        benchmarks = {
          primes-type-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.primes
              hsPkgs.primes-type
              hsPkgs.criterion
            ];
          };
        };
      };
    }