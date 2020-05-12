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
      specVersion = "1.8";
      identifier = { name = "github-post-receive"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Shohei Yasutake";
      maintainer = "Shohei Yasutake <amkkun@gmail.com>";
      author = "Shohei Yasutake";
      homepage = "http://github.com/amkkun/github-post-receive";
      url = "";
      synopsis = "github web hooks server";
      description = "This is a server of github web hooks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "github-post-receive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }