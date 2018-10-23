{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "netwire";
        version = "3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Fast generic automaton arrow transformer for AFRP";
      description = "This library implements a fast and powerful generic automaton arrow\ntransformer for arrowized functional reactive programming or\nautomaton programming in general.";
      buildType = "Simple";
    };
    components = {
      "netwire" = {
        depends  = [
          (hsPkgs.arrows)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.forkable-monad)
          (hsPkgs.monad-control)
          (hsPkgs.MonadRandom)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
        ];
      };
    };
  }