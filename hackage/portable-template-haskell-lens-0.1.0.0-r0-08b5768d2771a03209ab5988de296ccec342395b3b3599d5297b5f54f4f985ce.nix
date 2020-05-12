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
      identifier = {
        name = "portable-template-haskell-lens";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Lenses for the AST of Template Haskell 2.11 and Template Haskell < 2.11";
      description = "Template Haskell 2.11 changes its constructors. In order to write portable code, this package provides lenses / prisms to work across versions of template haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }