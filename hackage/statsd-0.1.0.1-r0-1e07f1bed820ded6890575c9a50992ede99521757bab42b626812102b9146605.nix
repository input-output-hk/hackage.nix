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
      identifier = { name = "statsd"; version = "0.1.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright (C) 2014 Mitchell Rosen";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/statsd-haskell";
      url = "";
      synopsis = "StatsD API.";
      description = "This package provides a simple interface to <https://github.com/etsy/statsd/ StatsD>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }