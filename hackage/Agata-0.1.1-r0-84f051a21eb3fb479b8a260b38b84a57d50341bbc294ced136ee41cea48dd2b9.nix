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
      identifier = { name = "Agata"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "Jonas Duregård (jonas.duregard@gmail.com)";
      author = "Jonas Duregård";
      homepage = "http://patch-tag.com/r/jonas_duregard/Agata";
      url = "";
      synopsis = "Generator-generator for QuickCheck";
      description = "Agata (Agata Generates Algebraic Types Automatically) uses Tempalte Haskell to derive QuickCheck generators for Haskell data types. Based on the master thesis work of Jonas Duregård.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }