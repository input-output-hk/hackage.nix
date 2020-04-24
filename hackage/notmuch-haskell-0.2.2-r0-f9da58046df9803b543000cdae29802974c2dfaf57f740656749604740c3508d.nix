{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "notmuch-haskell"; version = "0.2.2"; };
      license = "LicenseRef-LGPL";
      copyright = "© 2010 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "";
      url = "";
      synopsis = "Binding for notmuch MUA library";
      description = "This is a very preliminary higher-level Haskell binding\nfor the Notmuch (notmuchmail.org) email indexing library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        libs = [
          (pkgs."notmuch" or ((hsPkgs.pkgs-errors).sysDepError "notmuch"))
          (pkgs."gmime-2.4" or ((hsPkgs.pkgs-errors).sysDepError "gmime-2.4"))
          (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
          (pkgs."nsl" or ((hsPkgs.pkgs-errors).sysDepError "nsl"))
          (pkgs."gobject-2.0" or ((hsPkgs.pkgs-errors).sysDepError "gobject-2.0"))
          (pkgs."glib-2.0" or ((hsPkgs.pkgs-errors).sysDepError "glib-2.0"))
          (pkgs."talloc" or ((hsPkgs.pkgs-errors).sysDepError "talloc"))
          (pkgs."xapian" or ((hsPkgs.pkgs-errors).sysDepError "xapian"))
          ];
        buildable = true;
        };
      exes = {
        "notmuch-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            ];
          libs = [
            (pkgs."notmuch" or ((hsPkgs.pkgs-errors).sysDepError "notmuch"))
            ];
          buildable = true;
          };
        };
      };
    }