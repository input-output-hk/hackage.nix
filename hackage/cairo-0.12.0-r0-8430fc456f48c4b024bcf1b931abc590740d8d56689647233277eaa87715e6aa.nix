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
      specVersion = "1.6.0";
      identifier = { name = "cairo"; version = "0.12.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2001-2010 The Gtk2Hs Team, (c) Paolo Martini 2005, (c) Abraham Egnor 2003, 2004, (c) Aetion Technologies LLC 2004";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Cairo library.";
      description = "Cairo is a library to render high quality vector graphics. There\nexist various backends that allows rendering to Gtk windows, PDF,\nPS, PNG and SVG documents, amongst others.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        pkgconfig = (([
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
          ] ++ (pkgs.lib).optional (flags.cairo_pdf) (pkgconfPkgs."cairo-pdf" or (errorHandler.pkgConfDepError "cairo-pdf"))) ++ (pkgs.lib).optional (flags.cairo_ps) (pkgconfPkgs."cairo-ps" or (errorHandler.pkgConfDepError "cairo-ps"))) ++ (pkgs.lib).optional (flags.cairo_svg) (pkgconfPkgs."cairo-svg" or (errorHandler.pkgConfDepError "cairo-svg"));
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs")))
          ];
        buildable = true;
        };
      };
    }