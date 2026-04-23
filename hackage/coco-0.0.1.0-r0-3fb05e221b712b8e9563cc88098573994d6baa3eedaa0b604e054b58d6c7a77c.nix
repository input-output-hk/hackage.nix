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
      specVersion = "3.8";
      identifier = { name = "coco"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "konrad@disroot.org";
      author = "Konrad Czech";
      homepage = "https://codeberg.org/czech/coco";
      url = "";
      synopsis = "compatible conversions";
      description = "Other conversion packages define isomorphisms and such, but that doesn't guarantee you converting a to b and b to c is the same as converting a to c.\nThis package is designed to guarantee conversions are compatible to each other.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."foldable1-classes-compat" or (errorHandler.buildDepError "foldable1-classes-compat"))
        ];
        buildable = true;
      };
    };
  }