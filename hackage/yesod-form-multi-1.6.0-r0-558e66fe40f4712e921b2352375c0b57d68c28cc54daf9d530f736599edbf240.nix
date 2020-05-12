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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-form-multi"; version = "1.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "James Burton <jamesejburton@gmail.com>";
      author = "James Burton <jamesejburton@gmail.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Multi-input form handling for Yesod Web Framework";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-form-multi>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          ] ++ (pkgs.lib).optional (flags.network-uri) (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"));
        buildable = true;
        };
      };
    }