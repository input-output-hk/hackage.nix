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
      identifier = { name = "mgeneric"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Rafaël Bocquet <rafaelbocquet+github@gmail.com>";
      author = "Rafaël Bocquet";
      homepage = "http://github.com/RafaelBocquet/haskell-mgeneric/";
      url = "";
      synopsis = "Generics with multiple parameters";
      description = "TODO";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }