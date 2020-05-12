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
    flags = { dev = false; library-only = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-mangopay"; version = "1.11"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
      author = "JP Moresmau <jpmoresmau@gmail.com>";
      homepage = "https://github.com/prowdsponsor/mangopay";
      url = "";
      synopsis = "Yesod library for MangoPay API access";
      description = "This package provides convenience functions when using both\n@yesod@ and @mangopay@ packages.  It also includes a test\napplication that is built when the library-only flag is set to\n@False@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mangopay" or (errorHandler.buildDepError "mangopay"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          ];
        buildable = true;
        };
      exes = {
        "yesod-mangopay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."mangopay" or (errorHandler.buildDepError "mangopay"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-mangopay" or (errorHandler.buildDepError "yesod-mangopay"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
            (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
            (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."country-codes" or (errorHandler.buildDepError "country-codes"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      };
    }