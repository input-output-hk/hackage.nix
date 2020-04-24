{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-form-bulma"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Shinya Yamaguchi";
      maintainer = "ingroze@gmail.com";
      author = "Shinya Yamaguchi";
      homepage = "https://github.com/waddlaw/yesod-form-bulma#readme";
      url = "";
      synopsis = "support Bulma form for Yesod";
      description = "Please see the README on Github at <https://github.com/waddlaw/yesod-form-bulma#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
            (hsPkgs."yesod-form-bulma" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form-bulma"))
            ];
          buildable = true;
          };
        "showcase" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
            (hsPkgs."yesod-form-bulma" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form-bulma"))
            ];
          buildable = true;
          };
        };
      tests = {
        "yesod-form-bulma-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
            (hsPkgs."yesod-form-bulma" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form-bulma"))
            ];
          buildable = true;
          };
        };
      };
    }