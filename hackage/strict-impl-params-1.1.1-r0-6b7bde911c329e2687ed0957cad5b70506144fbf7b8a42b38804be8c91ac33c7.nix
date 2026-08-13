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
      identifier = { name = "strict-impl-params"; version = "1.1.1"; };
      license = "MIT";
      copyright = "2022 András Kovács";
      maintainer = "puttamalac@gmail.com";
      author = "";
      homepage = "https://github.com/AndrasKovacs/ghc-strict-implicit-params";
      url = "";
      synopsis = "Plugin for making implicit parameters strict";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }