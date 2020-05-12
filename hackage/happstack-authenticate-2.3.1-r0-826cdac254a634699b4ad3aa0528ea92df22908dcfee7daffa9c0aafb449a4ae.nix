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
      identifier = { name = "happstack-authenticate"; version = "2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2011-2015 SeeReason Partners, LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw.";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Happstack Authentication Library";
      description = "A themeable authentication library with support for username+password and OpenId.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."boomerang" or (errorHandler.buildDepError "boomerang"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hsx2hs" or (errorHandler.buildDepError "hsx2hs"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."jwt" or (errorHandler.buildDepError "jwt"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
          (hsPkgs."happstack-jmacro" or (errorHandler.buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-hsp" or (errorHandler.buildDepError "happstack-hsp"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or (errorHandler.buildDepError "hsx-jmacro"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pwstore-purehaskell" or (errorHandler.buildDepError "pwstore-purehaskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."userid" or (errorHandler.buildDepError "userid"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-boomerang" or (errorHandler.buildDepError "web-routes-boomerang"))
          (hsPkgs."web-routes-happstack" or (errorHandler.buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
          (hsPkgs."web-routes-hsp" or (errorHandler.buildDepError "web-routes-hsp"))
          ];
        buildable = true;
        };
      };
    }