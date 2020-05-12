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
      identifier = { name = "servius"; version = "1.2.0.0"; };
      license = "MIT";
      copyright = "2015 Michael Snoyman";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/servius#readme";
      url = "";
      synopsis = "Warp web server with template rendering";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "servius" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            ];
          buildable = true;
          };
        };
      };
    }