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
    flags = { demos = false; minimal-demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xing-api"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 Jan Ahrens";
      maintainer = "Jan Ahrens";
      author = "Jan Ahrens";
      homepage = "http://github.com/JanAhrens/xing-api-haskell";
      url = "";
      synopsis = "Wrapper for the XING API, v1.";
      description = "This package is currently under development and not considered stable.\nThe versioning follows <http://semver.org> and the first stable version will be release as 1.0.0.\n\nThis package includes a couple of demo programs.\nBy default these demos won't be built and you'll only install the library.\nYou have to set the /demos/ flag if you want to install them.\nTo use these demos, you also have to obtain an API consumer key from\n<https://dev.xing.com/applications> (a /test key/ will suffice).\n\n>cabal install -f demos xing-api";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ];
        buildable = true;
        };
      exes = {
        "xing-api-cli-demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xing-api" or (errorHandler.buildDepError "xing-api"))
            ];
          buildable = if flags.demos then true else false;
          };
        "xing-api-yesod-demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."shakespeare-i18n" or (errorHandler.buildDepError "shakespeare-i18n"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."xing-api" or (errorHandler.buildDepError "xing-api"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            ];
          buildable = if flags.demos then true else false;
          };
        "xing-api-minimal-demo" = {
          depends = (pkgs.lib).optionals (flags.minimal-demo) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."xing-api" or (errorHandler.buildDepError "xing-api"))
            ];
          buildable = if flags.minimal-demo then true else false;
          };
        };
      tests = {
        "TestMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xing-api" or (errorHandler.buildDepError "xing-api"))
            ];
          buildable = true;
          };
        };
      };
    }