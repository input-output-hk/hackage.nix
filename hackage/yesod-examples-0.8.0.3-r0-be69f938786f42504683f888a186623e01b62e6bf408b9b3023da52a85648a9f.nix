{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-examples"; version = "0.8.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Example programs using the Yesod Web Framework.";
      description = "These are the same examples and tutorials found on the documentation site.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yesod-blog" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            ];
          buildable = true;
          };
        "yesod-ajax" = {
          depends = [
            (hsPkgs."yesod-static" or ((hsPkgs.pkgs-errors).buildDepError "yesod-static"))
            ];
          buildable = true;
          };
        "yesod-file-echo" = {
          depends = [
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "yesod-pretty-yaml" = {
          depends = [
            (hsPkgs."data-object-yaml" or ((hsPkgs.pkgs-errors).buildDepError "data-object-yaml"))
            (hsPkgs."data-object" or ((hsPkgs.pkgs-errors).buildDepError "data-object"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "yesod-i18n" = { buildable = true; };
        "yesod-session" = { buildable = true; };
        "yesod-widgets" = {
          depends = [
            (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
            ];
          buildable = true;
          };
        "yesod-generalized-hamlet" = { buildable = true; };
        "yesod-form" = { buildable = true; };
        "yesod-persistent-synopsis" = {
          depends = [
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            ];
          buildable = true;
          };
        "yesod-hamlet-synopsis" = {
          depends = [
            (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
            ];
          buildable = true;
          };
        "yesod-chat" = {
          depends = [
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }