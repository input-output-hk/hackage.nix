{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "DisTract"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman";
      maintainer = "Matthew Sackman <matthew@wellquite.org>";
      author = "Matthew Sackman";
      homepage = "http://distract.wellquite.org/";
      url = "";
      synopsis = "Distributed Bug Tracking System";
      description = "A distributed bug tracker layered on top of Monotone.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."chunks" or ((hsPkgs.pkgs-errors).buildDepError "chunks"))
          (hsPkgs."hinstaller" or ((hsPkgs.pkgs-errors).buildDepError "hinstaller"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "DisTractNewBug" = { buildable = true; };
        "DisTractModifyBug" = { buildable = true; };
        "DisTractUpdateFormatAllBugs" = { buildable = true; };
        "DisTractUpdateFormatBug" = { buildable = true; };
        "DisTractFormatNew" = { buildable = true; };
        "DisTractSortBugs" = { buildable = true; };
        "DisTractInstaller" = { buildable = true; };
        };
      };
    }