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
    flags = { breakpoint = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "hoauth2-demo"; version = "1.11.0"; };
      license = "MIT";
      copyright = "Haisheng Wu";
      maintainer = "Haisheng Wu <freizl@gmail.com>";
      author = "Haisheng Wu";
      homepage = "https://github.com/freizl/hoauth2";
      url = "";
      synopsis = "hoauth2 demo application";
      description = "Demo application to test oauth2 flow with many providers using hoauth2";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoauth2-demo" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
            (hsPkgs."hoauth2-providers" or (errorHandler.buildDepError "hoauth2-providers"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."jose-jwt" or (errorHandler.buildDepError "jose-jwt"))
            (hsPkgs."mustache" or (errorHandler.buildDepError "mustache"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ] ++ pkgs.lib.optional (flags.breakpoint) (hsPkgs."breakpoint" or (errorHandler.buildDepError "breakpoint"));
          buildable = true;
        };
      };
    };
  }