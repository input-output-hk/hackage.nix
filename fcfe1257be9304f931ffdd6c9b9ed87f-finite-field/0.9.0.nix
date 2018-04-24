{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      useghctypelits = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "finite-field";
          version = "0.9.0";
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
        finite-field = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.deepseq
            hsPkgs.hashable
          ] ++ (if _flags.useghctypelits
            then [
              hsPkgs.base
              hsPkgs.singletons
            ]
            else [
              hsPkgs.type-level-numbers
            ]);
        };
        tests = {
          TestPrimeField = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.QuickCheck
              hsPkgs.finite-field
              hsPkgs.primes
            ] ++ (if _flags.useghctypelits
              then [
                hsPkgs.base
                hsPkgs.singletons
              ]
              else [
                hsPkgs.type-level-numbers
              ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") hsPkgs.tagged;
          };
        };
      };
    }