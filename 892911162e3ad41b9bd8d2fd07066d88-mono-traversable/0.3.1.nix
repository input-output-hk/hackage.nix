{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mono-traversable";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, John Wiegley, Greg Weber";
        homepage = "https://github.com/snoyberg/mono-traversable";
        url = "";
        synopsis = "Type classes for mapping, folding, and traversing monomorphic containers";
        description = "Monomorphic variants of the Functor, Foldable, and Traversable typeclasses. Contains even more experimental code for abstracting containers and sequences.";
        buildType = "Simple";
      };
      components = {
        mono-traversable = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.semigroupoids
            hsPkgs.comonad
            hsPkgs.vector-instances
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mono-traversable
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.QuickCheck
              hsPkgs.semigroups
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.foldl
            ];
          };
        };
      };
    }