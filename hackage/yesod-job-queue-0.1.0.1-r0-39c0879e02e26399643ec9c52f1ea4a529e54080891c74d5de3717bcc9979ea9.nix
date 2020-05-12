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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-job-queue"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/yesod-job-queue#readme";
      url = "";
      synopsis = "Background jobs library for Yesod.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."cron" or (errorHandler.buildDepError "cron"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."classy-prelude-yesod" or (errorHandler.buildDepError "classy-prelude-yesod"))
          (hsPkgs."api-field-json-th" or (errorHandler.buildDepError "api-field-json-th"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "yesod-job-queue-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-job-queue" or (errorHandler.buildDepError "yesod-job-queue"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."classy-prelude-yesod" or (errorHandler.buildDepError "classy-prelude-yesod"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "yesod-job-queue-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-job-queue" or (errorHandler.buildDepError "yesod-job-queue"))
            ];
          buildable = true;
          };
        };
      };
    }