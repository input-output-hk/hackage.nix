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
      identifier = { name = "yesod-crud"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Christopher League";
      maintainer = "league@contrapunctus.net";
      author = "Christopher League";
      homepage = "https://github.com/league/yesod-crud";
      url = "";
      synopsis = "Generic administrative CRUD operations as a Yesod subsite";
      description = "This package helps you build administrative CRUD\noperations (Create, Retrieve, Update, Delete) into\nyour web site, as Yesod subsites. There is a demo\nsite in the @example@ directory in the distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          ];
        buildable = true;
        };
      };
    }