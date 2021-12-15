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
      specVersion = "1.10";
      identifier = { name = "resource-pool-fork-avanov"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>,\nBas van Dijk <v.dijk.bas@gmail.com>,\nMaxim Avanov <maxim.avanov@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://github.com/avanov/pool";
      url = "";
      synopsis = "A high-performance striped resource pooling implementation";
      description = "A high-performance striped pooling abstraction for managing\nflexibly-sized collections of resources such as database\nconnections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }