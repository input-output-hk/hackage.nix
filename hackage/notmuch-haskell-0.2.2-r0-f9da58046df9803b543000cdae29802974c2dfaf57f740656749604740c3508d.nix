{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        libs = [
          (pkgs."notmuch" or (errorHandler.sysDepError "notmuch"))
          (pkgs."gmime-2.4" or (errorHandler.sysDepError "gmime-2.4"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."nsl" or (errorHandler.sysDepError "nsl"))
          (pkgs."gobject-2.0" or (errorHandler.sysDepError "gobject-2.0"))
          (pkgs."glib-2.0" or (errorHandler.sysDepError "glib-2.0"))
          (pkgs."talloc" or (errorHandler.sysDepError "talloc"))
          (pkgs."xapian" or (errorHandler.sysDepError "xapian"))
          ];
        buildable = true;
        };
      exes = {
        "notmuch-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            ];
          libs = [ (pkgs."notmuch" or (errorHandler.sysDepError "notmuch")) ];
          buildable = true;
          };
        };
      };
    }