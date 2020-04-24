{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rasa-ext-vim"; version = "0.1.5"; };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext for vim bindings";
      description = "Rasa Ext for vim bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."rasa" or ((hsPkgs.pkgs-errors).buildDepError "rasa"))
          (hsPkgs."rasa-ext-files" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-files"))
          (hsPkgs."rasa-ext-views" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-views"))
          (hsPkgs."rasa-ext-cursors" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-cursors"))
          (hsPkgs."rasa-ext-status-bar" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-status-bar"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yi-rope" or ((hsPkgs.pkgs-errors).buildDepError "yi-rope"))
          (hsPkgs."text-lens" or ((hsPkgs.pkgs-errors).buildDepError "text-lens"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "rasa-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rasa-ext-vim" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-vim"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }