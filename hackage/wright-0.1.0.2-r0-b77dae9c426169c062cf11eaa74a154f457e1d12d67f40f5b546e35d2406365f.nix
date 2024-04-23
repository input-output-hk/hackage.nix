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
      identifier = { name = "wright"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@vikramverma.com";
      author = "vi";
      homepage = "";
      url = "";
      synopsis = "Colour space transformations and metrics.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bed-and-breakfast" or (errorHandler.buildDepError "bed-and-breakfast"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "wright-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bed-and-breakfast" or (errorHandler.buildDepError "bed-and-breakfast"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."assertions" or (errorHandler.buildDepError "assertions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."wright" or (errorHandler.buildDepError "wright"))
          ];
          buildable = true;
        };
      };
    };
  }