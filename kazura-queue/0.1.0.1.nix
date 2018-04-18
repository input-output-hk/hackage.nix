{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kazura-queue";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Asakamirai";
        maintainer = "asakamirai_hackage@towanowa.net";
        author = "Asakamirai";
        homepage = "http://github.com/asakamirai/kazura-queue";
        url = "";
        synopsis = "Fast concurrent queues much inspired by unagi-chan";
        description = "\"kazura-queue\" provides an implementation of FIFO queue.\nIt is faster than Chan, TQueue or TChan by the benefit of fetch-and-add\ninstruction.\nMain motivation of this package is to solve some difficulty of \"unagi-chan\".\n- In \"unagi-chan\", the item in the queue/chan can be lost when async\nexception is throwed to the read thread while waiting for read.\n(Although it has handler to recover lost item,\nit is difficult to keep FIFO in such case)\n- In \"unagi-chan\", garbage items of the queue cannot be collected\nimmediately.\nSince the buffer in the queue has the reference to the items until the\nbuffer is garbage-collected.\n\"kazura-queue\" is slightly slower than \"unagi-chan\" instead of solving\nthese issues.\nAnd \"kazura-queue\" lost broadcast function to improve the second issue.\nIt means that kazura-queue is not \"Chan\" but is just \"Queue\".";
        buildType = "Simple";
      };
      components = {
        kazura-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.atomic-primops
            hsPkgs.async
            hsPkgs.containers
          ];
        };
        tests = {
          kazura-queue-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.kazura-queue
              hsPkgs.doctest
              hsPkgs.QuickCheck
            ];
          };
          kazura-queue-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.kazura-queue
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.free
              hsPkgs.exceptions
              hsPkgs.async
            ];
          };
        };
        benchmarks = {
          kazura-queue-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.kazura-queue
              hsPkgs.async
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.criterion
            ];
          };
        };
      };
    }