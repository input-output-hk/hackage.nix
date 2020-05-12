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
      specVersion = "1.6.0.1";
      identifier = { name = "hobbits"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emw4@rice.edu";
      author = "Eddy Westbrook, Nicolas Frisby, Paul Brauner";
      homepage = "";
      url = "";
      synopsis = "A library for canonically representing terms with binding";
      description = "A library for canonically representing terms with binding via a\nconstructor for introducing fresh names and a restricted API that avoids the\nneed for alpha-equivalence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."type-equality" or (errorHandler.buildDepError "type-equality"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }