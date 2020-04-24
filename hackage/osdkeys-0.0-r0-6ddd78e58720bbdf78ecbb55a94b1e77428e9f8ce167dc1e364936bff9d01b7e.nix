{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "osdkeys"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Show keys pressed with an on-screen display (Linux only)";
      description = "This program uses the xinput program to get a stream of key presses\nand uses the libnotify library to display them on-screen.\n\nCurrently supported display notations are: Emacs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."libnotify" or ((hsPkgs.pkgs-errors).buildDepError "libnotify"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "osdkeys" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."osdkeys" or ((hsPkgs.pkgs-errors).buildDepError "osdkeys"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }