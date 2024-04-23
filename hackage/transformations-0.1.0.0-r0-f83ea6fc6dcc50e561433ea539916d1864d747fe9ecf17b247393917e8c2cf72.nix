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
      identifier = { name = "transformations"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "generics@haskell.org";
      author = "Jeroen Bransen and Jose Pedro Magalhaes";
      homepage = "";
      url = "";
      synopsis = "Generic representation of tree transformations";
      description = "This library is based on ideas described in the paper:\n\n*  Jeroen Bransen and Jose Pedro Magalhaes.\n/Generic Representations of Tree Transformations/.\n<http://dreixel.net/research/pdf/grtt_draft.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
          (hsPkgs."rewriting" or (errorHandler.buildDepError "rewriting"))
          (hsPkgs."multirec" or (errorHandler.buildDepError "multirec"))
          (hsPkgs."zipper" or (errorHandler.buildDepError "zipper"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }