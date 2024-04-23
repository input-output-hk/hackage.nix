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
      specVersion = "1.2";
      identifier = { name = "cv-combinators"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Functional Combinators for Computer Vision";
      description = "Initial version; using the HOpenCV package as a backend.\n\nProvides a functional combinator library, naturally expressed as Arrow instances (but also Category, Functor and Applicative).\n\nRead the module docs for more information.\nSee the test program (@src/Test.hs@) for example usage.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HOpenCV" or (errorHandler.buildDepError "HOpenCV"))
        ];
        buildable = true;
      };
      exes = {
        "test-cv-combinators" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }