{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kazura-queue"; version = "0.1.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "kazura-queue-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "kazura-queue-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "kazura-queue-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }