{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "registry"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "etorreborre@yahoo.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "data structure for assembling components";
      description = "This library provides a \"Registry\" which is a data structure containing a list of functions and values representing dependencies in a directed acyclic graph. A `make` function can then be used to create a value of a specific type out of the registry.\nYou can start with the [README](https://github.com/etorreborre/registry/blob/master/README.md) for a full description of the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.protolude)
          (hsPkgs.resourcet)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.generic-lens)
            (hsPkgs.hashable)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-corpus)
            (hsPkgs.io-memoize)
            (hsPkgs.mtl)
            (hsPkgs.multimap)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.registry)
            (hsPkgs.resourcet)
            (hsPkgs.semigroupoids)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-th)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers-base)
            (hsPkgs.universum)
            ];
          };
        };
      };
    }