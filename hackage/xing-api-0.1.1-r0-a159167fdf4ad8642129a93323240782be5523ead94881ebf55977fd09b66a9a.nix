{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; minimal-demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xing-api"; version = "0.1.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."authenticate-oauth" or ((hsPkgs.pkgs-errors).buildDepError "authenticate-oauth"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          ];
        buildable = true;
        };
      exes = {
        "xing-api-cli-demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xing-api" or ((hsPkgs.pkgs-errors).buildDepError "xing-api"))
            ];
          buildable = if flags.demos then true else false;
          };
        "xing-api-yesod-demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."shakespeare-i18n" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-i18n"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."xing-api" or ((hsPkgs.pkgs-errors).buildDepError "xing-api"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            ];
          buildable = if flags.demos then true else false;
          };
        "xing-api-minimal-demo" = {
          depends = (pkgs.lib).optionals (flags.minimal-demo) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."xing-api" or ((hsPkgs.pkgs-errors).buildDepError "xing-api"))
            ];
          buildable = if flags.minimal-demo then true else false;
          };
        };
      tests = {
        "TestMain" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."xing-api" or ((hsPkgs.pkgs-errors).buildDepError "xing-api"))
            ];
          buildable = true;
          };
        };
      };
    }