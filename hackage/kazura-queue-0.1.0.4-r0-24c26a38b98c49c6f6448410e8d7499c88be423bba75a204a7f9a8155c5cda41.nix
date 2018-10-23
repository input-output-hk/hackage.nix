{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kazura-queue";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Asakamirai";
      maintainer = "asakamirai_hackage@towanowa.net";
      author = "Asakamirai";
      homepage = "https://github.com/asakamirai/kazura-queue#readme";
      url = "";
      synopsis = "Fast concurrent queues much inspired by unagi-chan";
      description = "\\\"kazura-queue\\\" provides an implementation of FIFO queue.\nIt is faster than Chan, TQueue or TChan by the benefit of fetch-and-add\ninstruction.\n\nMain motivation of this package is to solve some difficulty of\n\"unagi-chan\" package.\n\n- In \"unagi-chan\", the item in the queue/chan can be lost when async\nexception is throwed to the read thread while waiting for read.\n(Although it has handler to recover lost item,\nit is difficult to keep FIFO in such case)\n\n- In \"unagi-chan\", garbage items of the queue cannot be collected\nimmediately.\nSince the buffer in the queue has the reference to the items until the\nbuffer is garbage-collected.\n\n\\\"kazura-queue\\\" is slightly slower than \"unagi-chan\" instead of solving\nthese issues.\n\n\\\"kazura-queue\\\" lost broadcast function to improve the second issue.\nIt means that kazura-queue is not \\\"Chan\\\" but is just \\\"Queue\\\".";
      buildType = "Simple";
    };
    components = {
      "kazura-queue" = {
        depends  = [
          (hsPkgs.atomic-primops)
          (hsPkgs.base)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "kazura-queue-doctest" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.atomic-primops)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.kazura-queue)
            (hsPkgs.primitive)
          ];
        };
        "kazura-queue-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.atomic-primops)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.free)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.kazura-queue)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "kazura-queue-bench" = {
          depends  = [
            (hsPkgs.atomic-primops)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.kazura-queue)
            (hsPkgs.primitive)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }