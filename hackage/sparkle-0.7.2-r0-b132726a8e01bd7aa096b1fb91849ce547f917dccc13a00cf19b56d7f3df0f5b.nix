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
      identifier = { name = "sparkle"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 EURL Tweag";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/sparkle#readme";
      url = "";
      synopsis = "Distributed Apache Spark applications in Haskell";
      description = "See https://www.stackage.org/package/sparkle.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.inline-java or (pkgs.buildPackages.inline-java or (errorHandler.setupDepError "inline-java")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."choice" or (errorHandler.buildDepError "choice"))
          (hsPkgs."distributed-closure" or (errorHandler.buildDepError "distributed-closure"))
          (hsPkgs."inline-java" or (errorHandler.buildDepError "inline-java"))
          (hsPkgs."jni" or (errorHandler.buildDepError "jni"))
          (hsPkgs."jvm" or (errorHandler.buildDepError "jvm"))
          (hsPkgs."jvm-streaming" or (errorHandler.buildDepError "jvm-streaming"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "sparkle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."sparkle" or (errorHandler.buildDepError "sparkle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
          buildable = true;
        };
      };
    };
  }