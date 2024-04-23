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
      specVersion = "1.8";
      identifier = { name = "yesod-vend"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "https://github.com/Tener/yesod-vend";
      url = "";
      synopsis = "Simple CRUD classes for easy view creation for Yesod";
      description = "Simple CRUD classes for easy view creation for Yesod. See @Yesod.VEND@ for more informations and description how to use it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-platform" or (errorHandler.buildDepError "yesod-platform"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
        ];
        buildable = true;
      };
      exes = {
        "vend-test-user" = {
          depends = [
            (hsPkgs."yesod-vend" or (errorHandler.buildDepError "yesod-vend"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-platform" or (errorHandler.buildDepError "yesod-platform"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ];
          buildable = true;
        };
      };
    };
  }