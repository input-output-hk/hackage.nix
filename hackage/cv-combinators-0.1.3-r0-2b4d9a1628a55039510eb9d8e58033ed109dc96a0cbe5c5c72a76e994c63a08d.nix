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
    flags = { demos = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cv-combinators"; version = "0.1.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Functional Combinators for Computer Vision";
      description = "Initial version; using the \"HOpenCV\" package as a backend.\n\nProvides a functional combinator library for computer vision, based on the \"allocated-processor\" package.\n\nOnline documentation, if not built below, can be found at <http://www.ee.bgu.ac.il/~noamle/>.\n\nRead the module docs for more information.\nSee the test program (@src/Test.hs@) for example usage.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HOpenCV" or (errorHandler.buildDepError "HOpenCV"))
          (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        buildable = true;
      };
      exes = {
        "test-cv-combinators" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HOpenCV" or (errorHandler.buildDepError "HOpenCV"))
            (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
          buildable = true;
        };
      };
    };
  }