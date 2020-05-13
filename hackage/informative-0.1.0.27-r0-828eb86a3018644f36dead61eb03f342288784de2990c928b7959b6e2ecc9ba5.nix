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
      identifier = { name = "informative"; version = "0.1.0.27"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "http://doomanddarkness.eu/pub/informative";
      url = "";
      synopsis = "A yesod subsite serving a wiki.";
      description = "A yesod subsite serving a wiki.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "informative-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }