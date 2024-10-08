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
      identifier = { name = "markup"; version = "3.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Abstraction for HTML-embedded content";
      description = "This library tries to simplify deployment of common HTML constructs, for different\nHTML engines.\n\nDeployment, from this library's perspective, means /how/ something can be\nrendered to markup, yet still achieve the same \"result\" to the end user (namely\nthe DOM). For instance, we could use a @<link>@ tag to reference external Css,\nor we might insert the Css code /inline/ a @<style>@ tag.\n\nWe use simple tags to infer the deployment mechanism for a context of\nmarkup. The three deployment mechanisms provided include\n\n* /inline/ - the asset inserted between markup tags\n* /local/ - assets on the current server\n* /remote/ - assets referenced with a complete URI";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."path-extra" or (errorHandler.buildDepError "path-extra"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."urlpath" or (errorHandler.buildDepError "urlpath"))
        ];
        buildable = true;
      };
    };
  }