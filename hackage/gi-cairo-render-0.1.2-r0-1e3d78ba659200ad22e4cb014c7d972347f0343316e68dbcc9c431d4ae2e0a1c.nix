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
      specVersion = "2.0";
      identifier = { name = "gi-cairo-render"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Kilian Kilger, (c) 2001-2010 The Gtk2Hs Team, (c) Paolo Martini 2005, (c) Abraham Egnor 2003, 2004, (c) Aetion Technologies LLC 2004";
      maintainer = "Kilian Kilger (kkilger@gmail.com)";
      author = "Axel Simon, Duncan Coutts";
      homepage = "https://github.com/cohomology/gi-cairo-render";
      url = "";
      synopsis = "GI friendly Binding to the Cairo library.";
      description = "Cairo is a library to render high quality vector graphics. There\nexist various backends that allows rendering to Gtk windows, PDF,\nPS, PNG and SVG documents, amongst others.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        pkgconfig = (([
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
          (pkgconfPkgs."cairo-gobject" or (errorHandler.pkgConfDepError "cairo-gobject"))
        ] ++ pkgs.lib.optional (flags.cairo_pdf) (pkgconfPkgs."cairo-pdf" or (errorHandler.pkgConfDepError "cairo-pdf"))) ++ pkgs.lib.optional (flags.cairo_ps) (pkgconfPkgs."cairo-ps" or (errorHandler.pkgConfDepError "cairo-ps"))) ++ pkgs.lib.optional (flags.cairo_svg) (pkgconfPkgs."cairo-svg" or (errorHandler.pkgConfDepError "cairo-svg"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }