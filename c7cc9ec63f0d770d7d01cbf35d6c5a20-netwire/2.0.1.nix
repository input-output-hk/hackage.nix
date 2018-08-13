{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "netwire";
        version = "2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Generic automaton arrow transformer and useful tools";
      description = "This library implements a powerful generic automaton arrow\ntransformer.";
      buildType = "Simple";
    };
    components = {
      "netwire" = {
        depends  = [
          (hsPkgs.arrows)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
        ];
      };
    };
  }