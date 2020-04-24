{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { affinity = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "meta-par"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adam Foltzer 2011-2012";
      maintainer = "Adam Foltzer <acfoltzer@gmail.com>";
      author = "Adam Foltzer, Ryan Newton";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Provides the monad-par interface, but based on modular scheduler \"mix-ins\".";
      description = "This library provides a composable abstraction for /Resources/ which\ncan be mixed and matched to build /Schedulers/.\nA `Resource` typically corresponds to a specific kind of hardware or\nto a style of scheduling.  This package contains implementations of\nbasic `Resource`s that implement parallel scheduling on the CPU.\nTo use a complete meta-par Scheduler, import Control.Monad.Par.SMP for\nexample, which will provide a `runPar` as well as instances for the\nrelevant classes that enable `Par` programming (e.g. `ParFuture`).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
          (hsPkgs."abstract-deque" or ((hsPkgs.pkgs-errors).buildDepError "abstract-deque"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }