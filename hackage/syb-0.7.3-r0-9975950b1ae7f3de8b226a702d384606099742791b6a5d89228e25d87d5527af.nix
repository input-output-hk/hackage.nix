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
      identifier = { name = "syb"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Ralf Lammel, Simon Peyton Jones, Jose Pedro Magalhaes";
      homepage = "https://github.com/dreixel/syb";
      url = "";
      synopsis = "Scrap Your Boilerplate";
      description = "This package contains the generics system described in the\n/Scrap Your Boilerplate/ papers (see\n<http://www.cs.uu.nl/wiki/GenericProgramming/SYB>).\nIt defines the @Data@ class of types permitting folding and unfolding\nof constructor applications, instances of this class for primitive\ntypes, and a variety of traversals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }