{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-job-queue"; version = "0.3.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/yesod-job-queue#readme";
      url = "";
      synopsis = "Background jobs library for Yesod.";
      description = "Background jobs library for Yesod\n\n* It contains management API and web interface.\n* Queue backend is Redis.\n* Support cron scheduler\n\nUsage and screen shot are available in README.md";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."api-field-json-th" or ((hsPkgs.pkgs-errors).buildDepError "api-field-json-th"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cron" or ((hsPkgs.pkgs-errors).buildDepError "cron"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-persistent" or ((hsPkgs.pkgs-errors).buildDepError "yesod-persistent"))
          ];
        buildable = true;
        };
      exes = {
        "yesod-job-queue-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-job-queue" or ((hsPkgs.pkgs-errors).buildDepError "yesod-job-queue"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."classy-prelude-yesod" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude-yesod"))
            (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "yesod-job-queue-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod-job-queue" or ((hsPkgs.pkgs-errors).buildDepError "yesod-job-queue"))
            ];
          buildable = true;
          };
        };
      };
    }