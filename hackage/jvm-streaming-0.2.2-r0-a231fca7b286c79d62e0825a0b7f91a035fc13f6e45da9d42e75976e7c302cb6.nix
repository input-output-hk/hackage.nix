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
      identifier = { name = "jvm-streaming"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm-streaming#readme";
      url = "";
      synopsis = "Expose Java iterators as streams from the streaming package.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributed-closure" or (errorHandler.buildDepError "distributed-closure"))
          (hsPkgs."jni" or (errorHandler.buildDepError "jni"))
          (hsPkgs."jvm" or (errorHandler.buildDepError "jvm"))
          (hsPkgs."inline-java" or (errorHandler.buildDepError "inline-java"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
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
      };
    }