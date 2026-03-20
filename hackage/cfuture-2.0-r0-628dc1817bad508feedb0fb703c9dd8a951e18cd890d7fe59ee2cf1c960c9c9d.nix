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
      identifier = { name = "cfuture"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csimmaviktor03@gmail.com";
      author = "Viktor Csimma";
      homepage = "";
      url = "";
      synopsis = "A Future type that is interruptible anytime and exportable to C/C++.";
      description = "A module similar to the \"future\" package of Chris Kuklewicz,\nbut having a Future that is interruptible anytime,\nand easy to represent and handle\nin C/C++.\n\nIt uses two threads,\nthe first of which kills the calculation\nif triggered by filling an MVar,\nand the second of which calculating the result\nand writing it into another MVar.\nHowever, the library can be used\nwithout manipulating the MVars directly.";
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