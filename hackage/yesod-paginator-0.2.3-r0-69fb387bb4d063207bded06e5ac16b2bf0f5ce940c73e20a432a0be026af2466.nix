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
      identifier = { name = "yesod-paginator"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-paginator";
      url = "";
      synopsis = "A pagination approach for yesod";
      description = "Paginate a list showing a per-item widget and links to other pages";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }