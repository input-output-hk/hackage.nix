{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rasa-ext-slate"; version = "0.1.2"; };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa extension for rendering to terminal with vty";
      description = "Rasa extension for rendering to terminal with vty";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."rasa" or ((hsPkgs.pkgs-errors).buildDepError "rasa"))
          (hsPkgs."rasa-ext-bufs" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-bufs"))
          (hsPkgs."rasa-ext-style" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-style"))
          (hsPkgs."rasa-ext-status-bar" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-status-bar"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yi-rope" or ((hsPkgs.pkgs-errors).buildDepError "yi-rope"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          (hsPkgs."rasa-ext-logger" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-logger"))
          ];
        buildable = true;
        };
      };
    }