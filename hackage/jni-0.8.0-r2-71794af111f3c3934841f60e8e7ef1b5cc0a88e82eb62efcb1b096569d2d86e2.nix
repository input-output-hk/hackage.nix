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
    flags = { linear-types = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "jni"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "https://github.com/tweag/inline-java/tree/master/jni#readme";
      url = "";
      synopsis = "Complete JNI raw bindings.";
      description = "The hackage package has been superseded by the github repository which builds with Bazel. Please see https://github.com/tweag/inline-java/tree/master/jni#readme.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."choice" or (errorHandler.buildDepError "choice"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.linear-types
          then [
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            ]
          else [
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ]);
        libs = [ (pkgs."jvm" or (errorHandler.sysDepError "jvm")) ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."jni" or (errorHandler.buildDepError "jni"))
            ] ++ (pkgs.lib).optional (!flags.linear-types) (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"));
          libs = [ (pkgs."pthread" or (errorHandler.sysDepError "pthread")) ];
          buildable = true;
          };
        };
      };
    }