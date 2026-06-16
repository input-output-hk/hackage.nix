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
      specVersion = "2.2";
      identifier = { name = "sqlite-simple-effectful"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Diogo Castro";
      maintainer = "dc@diogocastro.com";
      author = "Diogo Castro";
      homepage = "https://github.com/dcastro/sqlite-simple-effectful#readme";
      url = "";
      synopsis = "Adaptation of the sqlite-simple library for the effectful ecosystem.";
      description = "Adaptation of the @<https://hackage.haskell.org/package/sqlite-simple sqlite-simple>@ library for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-pool" or (errorHandler.buildDepError "unliftio-pool"))
        ];
        buildable = true;
      };
    };
  }