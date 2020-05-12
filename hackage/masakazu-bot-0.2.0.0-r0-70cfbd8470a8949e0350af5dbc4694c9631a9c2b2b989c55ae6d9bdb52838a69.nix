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
      specVersion = "1.20";
      identifier = { name = "masakazu-bot"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "masakazu.minamiyama@gmail.com";
      author = "minamiyama1994";
      homepage = "https://github.com/minamiyama1994/chomado-bot-on-haskell/tree/minamiyama1994";
      url = "";
      synopsis = "@minamiyama1994_bot on haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "masakazu-bot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."twitter-conduit" or (errorHandler.buildDepError "twitter-conduit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-types" or (errorHandler.buildDepError "twitter-types"))
            (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            ];
          buildable = true;
          };
        };
      };
    }