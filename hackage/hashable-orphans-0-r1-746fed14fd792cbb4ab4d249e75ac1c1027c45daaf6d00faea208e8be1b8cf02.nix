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
      identifier = { name = "hashable-orphans"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "davean 2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Provides instances missing from Hashable.";
      description = "This package provides instances missing from <http://hackage.haskell.org/package/hashable hashable>, specificly ones for types from <http://hackage.haskell.org/package/time time> ('DiffTime', 'UTCTime') and <http://hackage.haskell.org/package/sorted-list sorted-list> at present.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."sorted-list" or (errorHandler.buildDepError "sorted-list"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }