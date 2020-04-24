{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kazura-queue"; version = "0.1.0.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "kazura-queue-doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ];
          buildable = true;
          };
        "kazura-queue-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "kazura-queue-bench" = {
          depends = [
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }