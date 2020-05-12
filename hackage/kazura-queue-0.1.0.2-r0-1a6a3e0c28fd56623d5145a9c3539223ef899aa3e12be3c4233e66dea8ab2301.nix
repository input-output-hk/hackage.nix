{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kazura-queue"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Asakamirai";
      maintainer = "asakamirai_hackage@towanowa.net";
      author = "Asakamirai";
      homepage = "http://github.com/asakamirai/kazura-queue";
      url = "";
      synopsis = "Fast concurrent queues much inspired by unagi-chan";
      description = "\"kazura-queue\" provides an implementation of FIFO queue.\nIt is faster than Chan, TQueue or TChan by the benefit of fetch-and-add\ninstruction.\n\nMain motivation of this package is to solve some difficulty of\n\"unagi-chan\" package.\n\n- In \"unagi-chan\", the item in the queue/chan can be lost when async\nexception is throwed to the read thread while waiting for read.\n(Although it has handler to recover lost item,\nit is difficult to keep FIFO in such case)\n\n- In \"unagi-chan\", garbage items of the queue cannot be collected\nimmediately.\nSince the buffer in the queue has the reference to the items until the\nbuffer is garbage-collected.\n\n\"kazura-queue\" is slightly slower than \"unagi-chan\" instead of solving\nthese issues.\nAnd \"kazura-queue\" lost broadcast function to improve the second issue.\nIt means that kazura-queue is not \"Chan\" but is just \"Queue\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "kazura-queue-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kazura-queue" or (errorHandler.buildDepError "kazura-queue"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "kazura-queue-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kazura-queue" or (errorHandler.buildDepError "kazura-queue"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "kazura-queue-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kazura-queue" or (errorHandler.buildDepError "kazura-queue"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }