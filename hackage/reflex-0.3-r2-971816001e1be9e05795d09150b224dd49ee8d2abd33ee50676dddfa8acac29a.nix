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
      specVersion = "1.9.2";
      identifier = {
        name = "reflex";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "https://github.com/reflex-frp/reflex";
      url = "";
      synopsis = "Higher-order Functional Reactive Programming";
      description = "Reflex is a high-performance, deterministic, higher-order Functional Reactive Programming system";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-map)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.these)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.ref-tf)
          (hsPkgs.exception-transformers)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ];
      };
      tests = {
        "cross-impl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reflex)
            (hsPkgs.ref-tf)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.dependent-map)
            (hsPkgs.MemoTrie)
          ];
        };
      };
      benchmarks = {
        "spider-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dependent-sum)
            (hsPkgs.dependent-map)
            (hsPkgs.transformers)
            (hsPkgs.stm)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.criterion)
            (hsPkgs.reflex)
          ];
        };
      };
    };
  }