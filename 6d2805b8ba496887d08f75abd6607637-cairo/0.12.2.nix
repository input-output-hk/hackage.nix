{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cairo_pdf = true;
      cairo_ps = true;
      cairo_svg = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cairo";
          version = "0.12.2";
        };
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
        cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.array
          ];
          pkgconfig = (([
            pkgconfPkgs.cairo
          ] ++ pkgs.lib.optional _flags.cairo_pdf pkgconfPkgs.cairo-pdf) ++ pkgs.lib.optional _flags.cairo_ps pkgconfPkgs.cairo-ps) ++ pkgs.lib.optional _flags.cairo_svg pkgconfPkgs.cairo-svg;
        };
      };
    }