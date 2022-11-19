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
      specVersion = "1.12";
      identifier = { name = "strict-impl-params"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2022 András Kovács";
      maintainer = "puttamalac@gmail.com";
      author = "";
      homepage = "https://github.com/AndrasKovacs/ghc-strict-implicit-params";
      url = "";
      synopsis = "Plugin for making top-level implicit parameters strict";
      description = "Plugin for making top-level implicit parameters strict";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }