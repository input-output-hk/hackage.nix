{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "hgettext"; version = "0.1.31.0"; };
      license = "BSD-3-Clause";
      copyright = "2009 Vasyl Pasternak";
      maintainer = "Herbert Valerio Riedel";
      author = "Vasyl Pasternak";
      homepage = "";
      url = "";
      synopsis = "Bindings to libintl.h (gettext, bindtextdomain)";
      description = "This package provides bindings to the @gettext@ internationalization and localization (i18n) library.\n\nThis package provides support for custom @Setup.hs@ scripts via the \"Distribution.Simple.I18N.GetText\" module.\n\nA user-contributed tutorial can be found in the [Haskell Wiki](https://wiki.haskell.org/Internationalization_of_Haskell_programs_using_gettext).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."libintl" or ((hsPkgs.pkgs-errors).sysDepError "libintl"));
        buildable = true;
        };
      exes = {
        "hgettext" = {
          depends = [
            (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      };
    }