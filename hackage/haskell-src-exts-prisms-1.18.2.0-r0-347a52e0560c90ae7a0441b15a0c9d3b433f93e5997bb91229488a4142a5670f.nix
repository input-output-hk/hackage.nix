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
      identifier = { name = "haskell-src-exts-prisms"; version = "1.18.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Waterworth";
      maintainer = "da.waterworth@gmail.com";
      author = "Daniel Waterworth";
      homepage = "https://github.com/DanielWaterworth/haskell-src-exts-prisms";
      url = "";
      synopsis = "Prisms with newtype wrappers for haskell-src-exts";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }