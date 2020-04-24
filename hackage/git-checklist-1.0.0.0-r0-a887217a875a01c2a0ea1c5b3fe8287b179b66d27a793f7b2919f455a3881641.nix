{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "git-checklist"; version = "1.0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dougal@dougalstanton.net";
      author = "Dougal Stanton";
      homepage = "https://github.com/dougalstanton/git-checklist";
      url = "";
      synopsis = "Maintain per-branch checklists in Git";
      description = "Manage lists of TODO items for private branches\nfrom the command line. No configuration required\nand fast to learn, with human-editable storage\nformat and comprehensive help information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "git-checklist" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }