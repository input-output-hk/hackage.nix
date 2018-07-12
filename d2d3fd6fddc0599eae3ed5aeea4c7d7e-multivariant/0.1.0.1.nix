{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "multivariant";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016-2017 Anton Marchenko, Mansur Ziatdinov";
        maintainer = "gltronred@gmail.com";
        author = "Anton Marchenko, Mansur Ziatdinov";
        homepage = "https://bitbucket.org/gltronred/multivariant#readme";
        url = "";
        synopsis = "Multivariant assignments generation language";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "multivariant" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.invertible
            hsPkgs.MonadRandom
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.tasty
            hsPkgs.tasty-quickcheck
            hsPkgs.tasty-hunit
            hsPkgs.QuickCheck
            hsPkgs.HUnit
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.free
              hsPkgs.invertible
              hsPkgs.MonadRandom
              hsPkgs.profunctors
              hsPkgs.semigroupoids
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.multivariant
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.free
              hsPkgs.invertible
              hsPkgs.MonadRandom
              hsPkgs.profunctors
              hsPkgs.semigroupoids
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.multivariant
            ];
          };
        };
      };
    }