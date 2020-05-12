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
      specVersion = "1.4";
      identifier = { name = "redis"; version = "0.7.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
      maintainer = "Alexander Bogdanov <andorn@gmail.com>";
      author = "Alexander Bogdanov <andorn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A driver for Redis key-value database";
      description = "Redis is an advanced key-value store. It is similar to memcached\nbut the dataset is not volatile. Values can be strings, exactly\nlike in memcached, but also lists, sets, and ordered sets.\n\nThis library is a Haskell driver for Redis. Note that this library\nsupports the most recent (actually the git one) version of Redis\nprotocol. Most of the functions will work correctly with stable version\nbut not all.\n\nChanges from v0.6:\n\n- new commands added: watch, unwatch\n\n- new batch command: run_cas\n\n- fixed bug with expireAt - thanks to Alex Suraci\n\n- fixed bug with sismember - thanks to Michael Snoyman\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          ];
        buildable = true;
        };
      };
    }