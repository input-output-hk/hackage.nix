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
    flags = { cairo_pdf = true; cairo_ps = true; cairo_svg = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "cairo"; version = "0.13.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2001-2010 The Gtk2Hs Team, (c) Paolo Martini 2005, (c) Abraham Egnor 2003, 2004, (c) Aetion Technologies LLC 2004";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Cairo library.";
      description = "Cairo is a library to render high quality vector graphics. There\nexist various backends that allows rendering to Gtk windows, PDF,\nPS, PNG and SVG documents, amongst others.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.gtk2hs-buildtools or (pkgs.buildPackages.gtk2hs-buildtools or (errorHandler.buildToolDepError "gtk2hs-buildtools")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        pkgconfig = (([
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
          ] ++ (pkgs.lib).optional (flags.cairo_pdf) (pkgconfPkgs."cairo-pdf" or (errorHandler.pkgConfDepError "cairo-pdf"))) ++ (pkgs.lib).optional (flags.cairo_ps) (pkgconfPkgs."cairo-ps" or (errorHandler.pkgConfDepError "cairo-ps"))) ++ (pkgs.lib).optional (flags.cairo_svg) (pkgconfPkgs."cairo-svg" or (errorHandler.pkgConfDepError "cairo-svg"));
        buildable = true;
        };
      };
    }