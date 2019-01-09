{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mono-traversable"; version = "0.9.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, John Wiegley, Greg Weber";
      homepage = "https://github.com/snoyberg/mono-traversable";
      url = "";
      synopsis = "Type classes for mapping, folding, and traversing monomorphic containers";
      description = "Monomorphic variants of the Functor, Foldable, and Traversable typeclasses. If you understand Haskell's basic typeclasses, you understand mono-traversable. In addition to what you are used to, it adds on an IsSequence typeclass and has code for marking data structures as non-empty.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.semigroupoids)
          (hsPkgs.comonad)
          (hsPkgs.vector-instances)
          (hsPkgs.vector-algorithms)
          (hsPkgs.dlist)
          (hsPkgs.dlist-instances)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mono-traversable)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.foldl)
            ];
          };
        };
      benchmarks = {
        "sorting" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mono-traversable)
            (hsPkgs.vector)
            (hsPkgs.mwc-random)
            ];
          };
        };
      };
    }