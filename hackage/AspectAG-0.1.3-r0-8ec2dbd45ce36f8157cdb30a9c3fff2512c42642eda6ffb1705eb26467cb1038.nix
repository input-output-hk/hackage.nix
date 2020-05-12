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
      specVersion = "1.2.3";
      identifier = { name = "AspectAG"; version = "0.1.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/AspectAG ";
      url = "";
      synopsis = "Attribute Grammars in the form of an EDSL";
      description = "Library of strongly typed Attribute Grammars implemented using type-level programming   ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }