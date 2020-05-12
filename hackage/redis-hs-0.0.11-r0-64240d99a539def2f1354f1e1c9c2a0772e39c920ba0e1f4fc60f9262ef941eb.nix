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
      identifier = { name = "redis-hs"; version = "0.0.11"; };
      license = "MIT";
      copyright = "";
      maintainer = "Will Langstroth <will@langstroth.com>";
      author = "Will Langstroth <will@langstroth.com>";
      homepage = "http://github.com/wlangstroth/redis-hs";
      url = "";
      synopsis = "A simple Redis library for Haskell";
      description = "This package provides access to Redis stores using the Data.ByteString.UTF8\nByteString, for consistent handling of UTF8 encoding. It is a developer pre-\nrelease, so it lacks many of the features of the existing `redis` package\n(including a monad wrapper, custom state management, and custom concurrency\nmanagement) but for ordinary tasks, this library makes using Redis very\nstraightforward.\n\nThe feature set is incomplete, with a full command set, test coverage, and\ndocumentation planned for version 0.1.";
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