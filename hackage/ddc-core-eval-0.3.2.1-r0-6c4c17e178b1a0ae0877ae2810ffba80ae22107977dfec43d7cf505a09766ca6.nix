{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ddc-core-eval";
        version = "0.3.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler semantic evaluator for the core language.";
      description = "This is a direct implementation of the operational semantics and is by no\nmeans fast, or a substitute for a real interpreter. Programs run with this\nevaluator will have an asymptotic complexity much worse than if they were\ncompiled. This evaluator is intended for experimenting with the language\nsemantics, and not running actual programs.";
      buildType = "Simple";
    };
    components = {
      "ddc-core-eval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.ddc-base)
          (hsPkgs.ddc-core)
        ];
      };
    };
  }