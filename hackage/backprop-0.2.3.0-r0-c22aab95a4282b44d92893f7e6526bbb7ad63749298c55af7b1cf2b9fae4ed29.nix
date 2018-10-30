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
        name = "backprop";
        version = "0.2.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://backprop.jle.im";
      url = "";
      synopsis = "Heterogeneous automatic differentation";
      description = "Write your functions to compute your result, and the library will\nautomatically generate functions to compute your gradient.\n\nImplements heterogeneous reverse-mode automatic differentiation, commonly\nknown as \"backpropagation\".\n\nSee <https://backprop.jle.im> for official introduction and documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.microlens)
          (hsPkgs.primitive)
          (hsPkgs.reflection)
          (hsPkgs.transformers)
          (hsPkgs.type-combinators)
          (hsPkgs.vector)
        ];
      };
      benchmarks = {
        "backprop-mnist-bench" = {
          depends  = [
            (hsPkgs.backprop)
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.hmatrix)
            (hsPkgs.lens)
            (hsPkgs.mnist-idx)
            (hsPkgs.mwc-random)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }