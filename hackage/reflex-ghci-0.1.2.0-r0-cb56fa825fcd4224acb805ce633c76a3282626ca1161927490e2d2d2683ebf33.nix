{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-ghci"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "A GHCi widget library for use in reflex applications";
      description = "Run GHCi from within a reflex application and interact with it using a functional-reactive interface.\n\n<<https://i.imgur.com/5y61Qx7.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."reflex-fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "reflex-fsnotify"))
          (hsPkgs."reflex-process" or ((hsPkgs.pkgs-errors).buildDepError "reflex-process"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."reflex-vty" or ((hsPkgs.pkgs-errors).buildDepError "reflex-vty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "reflex-ghci" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-ghci" or ((hsPkgs.pkgs-errors).buildDepError "reflex-ghci"))
            (hsPkgs."reflex-vty" or ((hsPkgs.pkgs-errors).buildDepError "reflex-vty"))
            (hsPkgs."reflex-process" or ((hsPkgs.pkgs-errors).buildDepError "reflex-process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }