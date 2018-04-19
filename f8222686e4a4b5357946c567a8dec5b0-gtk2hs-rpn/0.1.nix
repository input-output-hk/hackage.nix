{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gtk2hs-rpn";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Maurício CA <mauricio.antunes@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Adds a module to gtk2hs allowing layouts to be defined using\nreverse polish notation.";
        description = "Adds a module \"Graphics.UI.Gtk.Layout.Rpn\" to @gtk2hs@. This\nmodule defines a type @RPN@ for operators, which is an\ninstance of 'Data.Monoid.Monoid' class.  You can combine those\noperators using reverse polish notation, as made popular by,\nsay, HP calculators. There are operators for layout elements,\nlike expanders, panes, boxes and notebooks, and for a few\nother widgets, like buttons and labels. You can also insert\nany existing @gtk2hs@ widget in the stack.";
        buildType = "Simple";
      };
      components = {
        gtk2hs-rpn = {
          depends  = [
            hsPkgs.base
            hsPkgs.gtk
            hsPkgs.cairo
            hsPkgs.mtl
            hsPkgs.glib
          ];
        };
      };
    }