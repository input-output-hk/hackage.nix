{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jvm-streaming"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm-streaming#readme";
      url = "";
      synopsis = "Expose Java iterators as streams from the streaming package.";
      description = "Please see README.md.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.inline-java or (pkgs.buildPackages.inline-java or ((hsPkgs.pkgs-errors).buildToolDepError "inline-java")))
        (hsPkgs.buildPackages.jvm-batching or (pkgs.buildPackages.jvm-batching or ((hsPkgs.pkgs-errors).buildToolDepError "jvm-batching")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."distributed-closure" or ((hsPkgs.pkgs-errors).buildDepError "distributed-closure"))
          (hsPkgs."jni" or ((hsPkgs.pkgs-errors).buildDepError "jni"))
          (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
          (hsPkgs."jvm-batching" or ((hsPkgs.pkgs-errors).buildDepError "jvm-batching"))
          (hsPkgs."inline-java" or ((hsPkgs.pkgs-errors).buildDepError "inline-java"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."inline-java" or ((hsPkgs.pkgs-errors).buildDepError "inline-java"))
            (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
            (hsPkgs."jvm-streaming" or ((hsPkgs.pkgs-errors).buildDepError "jvm-streaming"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "micro-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
            (hsPkgs."jvm-streaming" or ((hsPkgs.pkgs-errors).buildDepError "jvm-streaming"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }