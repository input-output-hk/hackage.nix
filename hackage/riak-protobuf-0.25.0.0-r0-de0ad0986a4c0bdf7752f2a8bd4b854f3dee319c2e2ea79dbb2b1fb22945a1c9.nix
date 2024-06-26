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
      identifier = { name = "riak-protobuf"; version = "0.25.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2011 MailRank, Inc.\nPortions copyright 2007-2010 Basho Technologies, Inc.";
      maintainer = "Mark Hibberd <mark@hibberd.id.au>, Tim McGilchrist <timmcgil@gmail.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/riak-haskell-client/riak-haskell-client";
      url = "";
      synopsis = "Haskell types for the Riak protocol buffer API";
      description = "A set of Haskell types for interacting with the protocol buffer\nAPI of the Riak decentralized data store.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
        ];
        buildable = true;
      };
    };
  }