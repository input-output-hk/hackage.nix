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
      specVersion = "1.6";
      identifier = { name = "luautils"; version = "0.1.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "Helpers for Haskell integration with Lua";
      description = "This package is an add-on to the @HsLua@ package by Gracjan Polak.\nHsLua only provides a very bare-bones wrapper over the Lua API, and this\npackage is meant to fill in the gap by providing some commonly used features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."custom-prelude" or (errorHandler.buildDepError "custom-prelude"))
          ];
        buildable = true;
        };
      };
    }