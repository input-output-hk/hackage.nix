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
      specVersion = "1.8";
      identifier = { name = "stm-delay"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/haskell-stm-delay";
      url = "";
      synopsis = "Updatable one-shot timer polled with STM";
      description = "This library lets you create a one-shot timer, poll it using STM,\nand update it to ring at a different time than initially specified.\n\nIt uses GHC event manager timeouts when available (GHC 7.2+, @-threaded@,\nnon-Windows OS), yielding performance similar to @threadDelay@ and\n@registerDelay@.  Otherwise, it falls back to forked threads and\n@threadDelay@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
          ];
          buildable = true;
        };
        "test-threaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
          ];
          buildable = true;
        };
      };
    };
  }