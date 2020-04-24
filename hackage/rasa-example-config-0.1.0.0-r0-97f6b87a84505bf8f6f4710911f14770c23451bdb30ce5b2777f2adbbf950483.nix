{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rasa-example-config"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Example user config for Rasa";
      description = "Example user config for Rasa";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rasa" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rasa" or ((hsPkgs.pkgs-errors).buildDepError "rasa"))
            (hsPkgs."rasa-ext-vim" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-vim"))
            (hsPkgs."rasa-ext-style" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-style"))
            (hsPkgs."rasa-ext-cursors" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-cursors"))
            (hsPkgs."rasa-ext-status-bar" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-status-bar"))
            (hsPkgs."rasa-ext-logger" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-logger"))
            (hsPkgs."rasa-ext-files" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-files"))
            (hsPkgs."rasa-ext-slate" or ((hsPkgs.pkgs-errors).buildDepError "rasa-ext-slate"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }