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
      identifier = { name = "yesod-angular"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Reichert <creichert07@gmail.com>";
      author = "Christopher Reichert <creichert07@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Angular JS integratoin";
      description = "Angular JS integration for Yesod.\n\nThis module is based on Michael Snoyman's original work\nin the <https://github.com/snoyberg/yesod-js> repository.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
        ];
        buildable = true;
      };
    };
  }