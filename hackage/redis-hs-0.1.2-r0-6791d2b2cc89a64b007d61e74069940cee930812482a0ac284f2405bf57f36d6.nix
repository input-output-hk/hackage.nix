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
      identifier = { name = "redis-hs"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Will Langstroth <will@langstroth.com>";
      author = "Will Langstroth <will@langstroth.com>";
      homepage = "http://ohloh.net/p/redis-hs";
      url = "";
      synopsis = "A simple Redis library for Haskell";
      description = "This package provides access to  Redis stores using Data.ByteString.UTF8 for\nconsistent handling of UTF8 encoding. The function set is almost complete.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }