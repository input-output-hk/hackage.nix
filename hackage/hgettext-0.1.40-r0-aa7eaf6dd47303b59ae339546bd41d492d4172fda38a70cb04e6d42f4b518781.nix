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
      specVersion = "1.12";
      identifier = { name = "hgettext"; version = "0.1.40"; };
      license = "BSD-3-Clause";
      copyright = "2009 Vasyl Pasternak";
      maintainer = "https://github.com/haskell-hvr/hgettext";
      author = "Vasyl Pasternak, Herbert Valerio Riedel, Nikola Hadžić";
      homepage = "";
      url = "";
      synopsis = "Bindings to libintl.h (gettext, bindtextdomain)";
      description = "This package provides bindings to the @gettext@ internationalization and localization (i18n) library.\n\nThis package provides support for custom @Setup.hs@ scripts via the \"Distribution.Simple.I18N.GetText\" module.\n\nA user-contributed tutorial can be found in the [Haskell Wiki](https://wiki.haskell.org/Internationalization_of_Haskell_programs_using_gettext).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."libintl" or (errorHandler.sysDepError "libintl"));
        buildable = true;
        };
      exes = {
        "hgettext" = {
          depends = [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            ];
          buildable = true;
          };
        };
      };
    }