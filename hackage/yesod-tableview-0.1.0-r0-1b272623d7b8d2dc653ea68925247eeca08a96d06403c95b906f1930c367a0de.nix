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
      identifier = { name = "yesod-tableview"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Table view for Yesod applications";
      description = "Table view for Yesod applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ];
        buildable = true;
        };
      };
    }