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
        name = "registry";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "etorreborre@yahoo.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "data structure can for assembling \"components\"";
      description = "This library provides a \"Registry\" which is a data structure containing a list of functions and values representing dependencies in a directed acyclic graph. A `make` function can then be used to create a value of a specific type out of the registry.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.protolude)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-corpus)
            (hsPkgs.io-memoize)
            (hsPkgs.protolude)
            (hsPkgs.registry)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }