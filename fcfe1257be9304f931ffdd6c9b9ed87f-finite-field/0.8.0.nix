{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "finite-field";
          version = "0.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Finite Fields";
        description = "This is an implementation of finite fields.\nCurrently only prime fields are supported.";
        buildType = "Simple";
      };
      components = {
        "finite-field" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.type-level-numbers
          ];
        };
        tests = {
          "TestPrimeField" = {
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