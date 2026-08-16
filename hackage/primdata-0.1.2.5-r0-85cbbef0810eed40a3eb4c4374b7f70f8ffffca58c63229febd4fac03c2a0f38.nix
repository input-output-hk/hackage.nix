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
      identifier = { name = "primdata"; version = "0.1.2.5"; };
      license = "MIT";
      copyright = "2018-2025 András Kovács";
      maintainer = "puttamalac@gmail.com";
      author = "András Kovács";
      homepage = "";
      url = "";
      synopsis = "Minimum-overhead primitive datatypes";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }