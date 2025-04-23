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
      specVersion = "3.0";
      identifier = { name = "cfuture"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csimmaviktor03@gmail.com";
      author = "Viktor Csimma";
      homepage = "";
      url = "";
      synopsis = "A Future type that is easy to represent and handle in C/C++.";
      description = "A module similar to the \"future\" package of Chris Kuklewicz,\nbut having a Future that is easy to represent and handle\nin C/C++,\nusing two MVars.\nMoreover, it uses two new threads:\none (the \"watcher thread\") aborts the calculation\nif triggered by filling the first MVar.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
        ];
        buildable = true;
      };
      foreignlibs = {
        "cfuture" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."cfuture" or (errorHandler.buildDepError "cfuture"))
          ];
          buildable = true;
        };
      };
      tests = {
        "cfuture-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."cfuture" or (errorHandler.buildDepError "cfuture"))
          ];
          buildable = true;
        };
      };
    };
  }