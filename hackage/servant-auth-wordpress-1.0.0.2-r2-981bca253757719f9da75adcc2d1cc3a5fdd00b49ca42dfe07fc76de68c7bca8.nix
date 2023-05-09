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
      specVersion = "1.12";
      identifier = { name = "servant-auth-wordpress"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/wordpress-auth#readme";
      url = "";
      synopsis = "Authenticate Routes Using Wordpress Cookies";
      description = "This package provides a Servant AuthHandler that validates Wordpress's @LOGGED_IN@ authentication Cookie & the @wp_rest@ Nonce, returning either an Authorized user with data or an Anonymous user, or calling an error handler.\n\nThis allows you to access the currently logged in User when making AJAX requests from a Wordpress site.\n\nCheck out the @wordpress-auth@ package for lower-level Wordpress Cookie & Nonce manipulation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wordpress-auth" or (errorHandler.buildDepError "wordpress-auth"))
          ];
        buildable = true;
        };
      };
    }