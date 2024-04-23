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
      identifier = { name = "edis"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Ting-Yan Lai";
      maintainer = "banacorn@gmail.com";
      author = "Ting-Yan Lai";
      homepage = "";
      url = "";
      synopsis = "Statically typechecked client for Redis";
      description = "This library is a Haskell client for the Redis datastore built on top of\nHedis, with stronger type-level guarantees.\n\nFor detailed documentation, see the \"Database.Edis\" module.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        buildable = true;
      };
    };
  }