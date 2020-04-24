{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cairo_pdf = true; cairo_ps = true; cairo_svg = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "cairo"; version = "0.13.0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2001-2010 The Gtk2Hs Team, (c) Paolo Martini 2005, (c) Abraham Egnor 2003, 2004, (c) Aetion Technologies LLC 2004";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Cairo library.";
      description = "Cairo is a library to render high quality vector graphics. There\nexist various backends that allows rendering to Gtk windows, PDF,\nPS, PNG and SVG documents, amongst others.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        pkgconfig = (([
          (pkgconfPkgs."cairo" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo"))
          ] ++ (pkgs.lib).optional (flags.cairo_pdf) (pkgconfPkgs."cairo-pdf" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo-pdf"))) ++ (pkgs.lib).optional (flags.cairo_ps) (pkgconfPkgs."cairo-ps" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo-ps"))) ++ (pkgs.lib).optional (flags.cairo_svg) (pkgconfPkgs."cairo-svg" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo-svg"));
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsC2hs")))
          ];
        buildable = true;
        };
      };
    }