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
      specVersion = "1.10";
      identifier = {
        name = "Parallel-Arrows-Definition";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Martin Braun";
      author = "";
      homepage = "https://github.com/s4ke/Parrows#readme";
      url = "";
      synopsis = "Multithreaded evaluation using Arrows.";
      description = "Arrows are a suitable abstraction for parallel programming. This package offers a general interface for parallelizing Arrows. This package however only contains the interface and code written against it must be used with a backend such as @Parallel-Arrows-Multicore@, @Parallel-Arrows-ParMonad@, @Parallel-Arrows-Eden@ in order to have any parallel speedup. This package also contains some parallel skeletons such as variants of parMap and some topology skeletons.\nFor more info see check out the paper at https://arxiv.org/abs/1801.02216";
      buildType = "Simple";
    };
    components = {
      "Parallel-Arrows-Definition" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.split)
        ];
      };
    };
  }