{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "these";
          version = "0.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cam@uptoisomorphism.net";
        author = "C. McCann";
        homepage = "https://github.com/isomorphism/these";
        url = "";
        synopsis = "An either-or-both data type & a generalized 'zip with padding' typeclass";
        description = "This package provides a data type @These a b@ which can hold a value of either\ntype or values of each type. This is usually thought of as an \"inclusive or\"\ntype (contrasting @Either a b@ as \"exclusive or\") or as an \"outer join\" type\n(contrasting @(a, b)@ as \"inner join\").\n\nThe major use case of this is provided by the @Align@ class, representing a\ngeneralized notion of \"zipping with padding\" that combines structures without\ntruncating to the size of the smaller input.\n\nAlso included is @ChronicleT@, a monad transformer based on the Monad instance\nfor @These a@, along with the usual monad transformer bells and whistles.";
        buildType = "Simple";
      };
      components = {
        "these" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bifunctors
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.keys
            hsPkgs.mtl
            hsPkgs.profunctors
            hsPkgs.QuickCheck
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-instances
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.5") hsPkgs.ghc-prim) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.these
              hsPkgs.base
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.aeson
              hsPkgs.bifunctors
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }