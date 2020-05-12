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
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "resource-pool-catchio"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Jurriën Stutterheim <j.stutterheim@me.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/norm2782/pool";
      url = "";
      synopsis = "Fork of resource-pool, with a MonadCatchIO constraint";
      description = "This is a fork of Bryan O'Sullivan's resource-pool package. The only\ndifference is that it relies on MonadCatchIO, rather than MonadControlIO. If\nyou do not strictly need the MonadCatchIO support, please use Bryan's\noriginal package instead.\nA high-performance striped pooling abstraction for managing\nflexibly-sized collections of resources such as database\nconnections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }