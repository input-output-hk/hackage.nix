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
      specVersion = "2.0";
      identifier = { name = "htdp-image"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trajafri@gmail.com";
      author = "Turab Jafri";
      homepage = "";
      url = "";
      synopsis = "Beginner friendly graphics library.";
      description = "htdp-image is a simple graphics library inspired by Racket's htdp/image.\nUnder the hood, it is a wrapper on top of Gloss, another easy\nto use graphics library but htdp-image makes drawing objects even easier for beginners.\nAs long as Gloss works on a machine, this library should also work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."AC-Angle" or (errorHandler.buildDepError "AC-Angle"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
        ];
        buildable = true;
      };
      tests = {
        "htdp-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."htdp-image" or (errorHandler.buildDepError "htdp-image"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }