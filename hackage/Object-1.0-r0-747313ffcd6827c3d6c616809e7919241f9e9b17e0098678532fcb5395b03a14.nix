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
      specVersion = "1.4";
      identifier = { name = "Object"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "yokto.reports@gmail.com";
      author = "Silvio Frischknecht";
      homepage = "https://github.com/yokto/object";
      url = "";
      synopsis = "Object oriented programming for haskell using multiparameter typeclasses.";
      description = "Read the homepage or Object.Example for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }