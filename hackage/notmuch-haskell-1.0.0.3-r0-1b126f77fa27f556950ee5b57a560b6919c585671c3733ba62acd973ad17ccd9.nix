{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "notmuch-haskell"; version = "1.0.0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "© 2010 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "";
      url = "";
      synopsis = "Binding for notmuch MUA library";
      description = "This is a half-assed higher-level Haskell binding\nfor the Notmuch (notmuchmail.org) email indexing library.";
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
          ];
        buildable = true;
        };
      exes = {
        "notmuch-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
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