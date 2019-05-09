{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cairo_pdf = true; cairo_ps = true; cairo_svg = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "gi-cairo-render"; version = "0.0.1"; };
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
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.array)
          ];
        pkgconfig = (([
          (pkgconfPkgs."cairo")
          (pkgconfPkgs."cairo-gobject")
          ] ++ (pkgs.lib).optional (flags.cairo_pdf) (pkgconfPkgs."cairo-pdf")) ++ (pkgs.lib).optional (flags.cairo_ps) (pkgconfPkgs."cairo-ps")) ++ (pkgs.lib).optional (flags.cairo_svg) (pkgconfPkgs."cairo-svg");
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }