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
      identifier = { name = "jvm-streaming"; version = "0.3"; };
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
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.inline-java or (pkgs.pkgsBuildBuild.inline-java or (errorHandler.setupDepError "inline-java")))
        (hsPkgs.pkgsBuildBuild.jvm-batching or (pkgs.pkgsBuildBuild.jvm-batching or (errorHandler.setupDepError "jvm-batching")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributed-closure" or (errorHandler.buildDepError "distributed-closure"))
          (hsPkgs."jni" or (errorHandler.buildDepError "jni"))
          (hsPkgs."jvm" or (errorHandler.buildDepError "jvm"))
          (hsPkgs."jvm-batching" or (errorHandler.buildDepError "jvm-batching"))
          (hsPkgs."inline-java" or (errorHandler.buildDepError "inline-java"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."inline-java" or (errorHandler.buildDepError "inline-java"))
            (hsPkgs."jvm" or (errorHandler.buildDepError "jvm"))
            (hsPkgs."jvm-streaming" or (errorHandler.buildDepError "jvm-streaming"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "micro-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."jvm" or (errorHandler.buildDepError "jvm"))
            (hsPkgs."jvm-streaming" or (errorHandler.buildDepError "jvm-streaming"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }