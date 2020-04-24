{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrent-machines"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Concurrent networked stream transducers";
      description = "A simple use-case for this library is to run the stages\nof a pipelined streaming computation concurrently. If\ndata is streaming through multiple processing stages, you\nmight build a machine like\n\n@\nstep1 >~> step2 >~> step3\n@\n\nThe @>~>@ operator connects the machines on\neither side with a one-element buffer. This means that\ndata is pulled from upstream sources eagerly (perhaps\npulling one more value than will be consumed by\ndownstream), but it also means that each stage can be\nworking simultaneously, increasing throughput of the\nentire pipeline.\n\nA few small examples are available in the @examples@\ndirectory of the source repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."concurrent-machines" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-machines"))
            (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fanout" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
            (hsPkgs."concurrent-machines" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-machines"))
            ];
          buildable = true;
          };
        };
      };
    }