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
      specVersion = "2.0";
      identifier = { name = "derive-lifted-instances"; version = "0.2.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/derive-lifted-instances";
      url = "";
      synopsis = "Derive class instances though various kinds of lifting";
      description = "Helper functions to use Template Haskell for generating class instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          ];
        buildable = true;
        };
      };
    }