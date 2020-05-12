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
      identifier = { name = "snaplet-haxl"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris@christopherbiscardi.com";
      author = "Christopher Biscardi";
      homepage = "https://github.com/ChristopherBiscardi/snaplet-haxl";
      url = "";
      synopsis = "Snaplet for Facebook's Haxl";
      description = "A Snaplet for the integration of Haxl DataSources with Snap.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haxl" or (errorHandler.buildDepError "haxl"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }