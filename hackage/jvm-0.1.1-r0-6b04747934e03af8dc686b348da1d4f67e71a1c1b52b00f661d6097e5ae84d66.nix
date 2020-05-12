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
      identifier = { name = "jvm"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm#readme";
      url = "";
      synopsis = "Call JVM methods from Haskell.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."distributed-closure" or (errorHandler.buildDepError "distributed-closure"))
          (hsPkgs."jni" or (errorHandler.buildDepError "jni"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."jvm" or (errorHandler.buildDepError "jvm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          libs = [ (pkgs."pthread" or (errorHandler.sysDepError "pthread")) ];
          buildable = true;
          };
        };
      };
    }