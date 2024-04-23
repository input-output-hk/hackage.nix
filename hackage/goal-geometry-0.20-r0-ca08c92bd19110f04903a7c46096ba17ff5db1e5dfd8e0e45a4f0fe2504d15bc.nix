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
      identifier = { name = "goal-geometry"; version = "0.20"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sacha.sokoloski@mailbox.org";
      author = "Sacha Sokoloski";
      homepage = "https://gitlab.com/sacha-sokoloski/goal";
      url = "";
      synopsis = "The basic geometric type system of Goal";
      description = "goal-geometry provides the basic types and classes which drive the manifold/geometry based approach of Goal. Points and manifolds, dual spaces, function spaces and multilayer neural networks, and generic optimization routines are defined here.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."indexed-list-literals" or (errorHandler.buildDepError "indexed-list-literals"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
        ];
        buildable = true;
      };
    };
  }