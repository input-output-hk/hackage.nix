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
      identifier = { name = "dialog"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Nikita Churaev";
      maintainer = "Nikita Churaev <lamefun.x0r@gmail.com>";
      author = "Nikita Churaev <lamefun.x0r@gmail.com>";
      homepage = "https://gitlab.com/lamefun/dialog";
      url = "";
      synopsis = "Simple dialog-based user interfaces";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
          (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
          ];
        buildable = true;
        };
      };
    }