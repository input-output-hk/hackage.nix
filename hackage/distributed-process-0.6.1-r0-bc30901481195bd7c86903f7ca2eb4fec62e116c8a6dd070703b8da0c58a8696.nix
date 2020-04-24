{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { th = true; old-locale = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP, Tweag I/O Limited";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://haskell-distributed.github.com/";
      url = "";
      synopsis = "Cloud Haskell: Erlang-style concurrency in Haskell";
      description = "This is an implementation of Cloud Haskell, as described in\n/Towards Haskell in the Cloud/ by Jeff Epstein, Andrew Black,\nand Simon Peyton Jones\n(<http://research.microsoft.com/en-us/um/people/simonpj/papers/parallel/>),\nalthough some of the details are different. The precise message\npassing semantics are based on /A unified semantics for future Erlang/\nby Hans Svensson, Lars-&#xc5;ke Fredlund and Clara Benac Earle.\nYou will probably also want to install a Cloud Haskell backend such\nas distributed-process-simplelocalnet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."distributed-static" or ((hsPkgs.pkgs-errors).buildDepError "distributed-static"))
          (hsPkgs."rank1dynamic" or ((hsPkgs.pkgs-errors).buildDepError "rank1dynamic"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ] ++ [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ]) ++ (if flags.old-locale
          then [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ])) ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"));
        buildable = true;
        };
      benchmarks = {
        "distributed-process-throughput" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "distributed-process-latency" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "distributed-process-channels" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "distributed-process-spawns" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "distributed-process-ring" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        };
      };
    }