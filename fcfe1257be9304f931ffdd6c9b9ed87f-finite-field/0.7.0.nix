{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "finite-field";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Finite Fields";
        description = "This is an implementation of finite fields.\nCurrently only prime fields are supported.\n\nChanges in 0.7.0\n\n* use extended GCD to compute reciprocals\n\n* conform with the addition of SomeNat type to type-level-numbers-0.1.1.0.\n\nChanges in 0.6.0\n\n* add Hashable instance\n\nChanges in 0.6.0\n\n* add allValues to FiniteField class\n\nChanges in 0.5.0\n\n* introduce FiniteField class";
        buildType = "Simple";
      };
      components = {
        finite-field = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.type-level-numbers
            hsPkgs.algebra
          ];
        };
        tests = {
          TestPrimeField = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.finite-field
              hsPkgs.primes
              hsPkgs.type-level-numbers
            ];
          };
        };
      };
    }