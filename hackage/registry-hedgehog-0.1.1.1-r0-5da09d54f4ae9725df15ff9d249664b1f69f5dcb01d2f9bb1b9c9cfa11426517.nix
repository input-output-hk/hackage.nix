{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "registry-hedgehog"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "etorreborre@yahoo.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "utilities to work with Hedgehog generators and `registry`";
      description = "This library provides some functions to extract generators from a \"Registry\" and make stateful modifications of that Registry to precisely control the generation of data";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hedgehog)
          (hsPkgs.mmorph)
          (hsPkgs.multimap)
          (hsPkgs.protolude)
          (hsPkgs.registry)
          (hsPkgs.tasty)
          (hsPkgs.tasty-discover)
          (hsPkgs.tasty-hedgehog)
          (hsPkgs.tasty-th)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.universum)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-corpus)
            (hsPkgs.mmorph)
            (hsPkgs.multimap)
            (hsPkgs.protolude)
            (hsPkgs.registry)
            (hsPkgs.registry-hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-th)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.universum)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }