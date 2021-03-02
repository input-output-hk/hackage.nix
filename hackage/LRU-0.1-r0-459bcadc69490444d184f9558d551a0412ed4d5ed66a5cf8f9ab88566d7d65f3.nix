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
      specVersion = "1.0";
      identifier = { name = "LRU"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley";
      homepage = "http://www.imperialviolet.org/lru";
      url = "";
      synopsis = "Implements an LRU data structure";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }