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
      identifier = { name = "warp-tls"; version = "3.0.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "HTTP over SSL/TLS support for Warp via the TLS package";
      description = "API docs and the README are available at <http://www.stackage.org/package/warp-tls>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          ];
        buildable = true;
        };
      };
    }