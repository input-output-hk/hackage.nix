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
      specVersion = "1.6";
      identifier = {
        name = "aivika-gpss";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "GPSS-like DSL for Aivika";
      description = "This package allows defining simulation models in terms of a GPSS-like\ndomain specific language, which can be useful if you are going to\ntranslate your models from GPSS into Aivika [1, 2].\n\nNote that the GPSS-like domain specific language is not equivalent to\nthe original GPSS language, but it may return very similar results in\nsome cases, while it can also return quite different results in other cases.\n\nThe package implements the most of GPSS simulation blocks, but the main difference\nis as follows.\n\nLike GPSS, the package tries to treat the transact priorities properly within each block.\nHere it works in a very similar way even for such non-trivial blocks as PREEMPT, GATHER\nand ASSEMBLE. But unlike GPSS, the blocks behave independently from each other, where\nthe transact priorities are not used when deciding which of the blocks will be activated next.\nThe order of activating the blocks is unpredictable.\n\nThere is a layer of emulation. The package creates a new discontinuous process for each new transact.\nThen that process becomes fully responsible for processing the transact by the blocks. Therefore,\nthe speed of simulation is slower than it could be when implementing the same model but based on\nusing the standard Aivika facilities.\n\nThe rough estimation is that this particular package is slower in 2-3 times than the existent GPSS\nsimulators in case of sequential simulation. But the point is that you can combine GPSS with\ndiscontinuous processes, events and even agents within the same model. Moreover, you can use GPSS\nin parallel and distributed simulation models.\n\nFinally, you can use the following prepared example [3].\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n\n\\[2] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[3] <https://github.com/dsorokin/aivika-gpss-test>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.aivika)
          (hsPkgs.aivika-transformers)
        ];
      };
    };
  }