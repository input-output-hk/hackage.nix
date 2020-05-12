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
      identifier = { name = "derivation-trees"; version = "0.7.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Typeset Derivation Trees via MetaPost";
      description = "A library to typeset derivation trees via Laurent Mehats metapost package.\nAlso contains a module to ease the generation of trees for (coloured) pure type systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."labeled-tree" or (errorHandler.buildDepError "labeled-tree"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          ];
        buildable = true;
        };
      };
    }