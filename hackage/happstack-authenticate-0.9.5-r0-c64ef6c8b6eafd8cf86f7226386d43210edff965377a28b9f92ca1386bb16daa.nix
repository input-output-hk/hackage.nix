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
      identifier = { name = "happstack-authenticate"; version = "0.9.5"; };
      license = "BSD-3-Clause";
      copyright = "2011 SeeReason Partners, LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw.";
      homepage = "http://src.seereason.com/happstack-authenticate";
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
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."fb" or (errorHandler.buildDepError "fb"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pwstore-purehaskell" or (errorHandler.buildDepError "pwstore-purehaskell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."reform" or (errorHandler.buildDepError "reform"))
          (hsPkgs."reform-blaze" or (errorHandler.buildDepError "reform-blaze"))
          (hsPkgs."reform-happstack" or (errorHandler.buildDepError "reform-happstack"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-happstack" or (errorHandler.buildDepError "web-routes-happstack"))
          ];
        buildable = true;
        };
      };
    }