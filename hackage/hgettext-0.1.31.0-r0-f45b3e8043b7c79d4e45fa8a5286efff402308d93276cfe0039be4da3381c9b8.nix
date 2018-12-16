{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hgettext";
        version = "0.1.31.0";
      };
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
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.setlocale)
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."libintl");
      };
      exes = {
        "hgettext" = {
          depends = [
            (hsPkgs.hgettext)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.deepseq)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
          ];
        };
      };
    };
  }