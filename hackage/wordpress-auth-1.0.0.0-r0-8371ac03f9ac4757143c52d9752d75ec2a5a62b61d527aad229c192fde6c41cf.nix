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
      identifier = { name = "wordpress-auth"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/wordpress-auth#readme";
      url = "";
      synopsis = "Validate Wordpress Cookies & Nonces; Build Wordpress Hashes & Salts";
      description = "This package is used for validating Cookie data & Nonces from Wordpress.\n\nYou may find it useful if you're trying to serve a Haskell application alongside a Wordpress site. By validating the Cookies set by Wordpress, you can access the currently logged-in Wordpress user in Haskell without having to devise a Wordpress-to-Haskell authentication scheme.\n\nIt includes a generalized authentication function, as well as various helpers, validators, & hashers if you'd like to build a custom authentication process.\n\nServant users may want to just use the @servant-auth-wordpress@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."hs-php-session" or (errorHandler.buildDepError "hs-php-session"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
          ];
        buildable = true;
        };
      };
    }