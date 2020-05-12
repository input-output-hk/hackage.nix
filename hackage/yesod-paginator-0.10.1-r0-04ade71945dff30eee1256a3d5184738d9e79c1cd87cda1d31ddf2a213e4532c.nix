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
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-paginator"; version = "0.10.1"; };
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
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "yesod-paginator-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-paginator" or (errorHandler.buildDepError "yesod-paginator"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yesod-paginator" or (errorHandler.buildDepError "yesod-paginator"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
            ];
          buildable = true;
          };
        };
      };
    }