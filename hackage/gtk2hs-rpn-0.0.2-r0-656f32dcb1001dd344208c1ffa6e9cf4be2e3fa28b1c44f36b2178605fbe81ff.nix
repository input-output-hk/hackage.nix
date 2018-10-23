{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gtk2hs-rpn";
        version = "0.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Maurício CA <mauricio.antunes@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Adds a module to gtk2hs allowing layouts to\nbe defined using reverse polish notation.";
      description = "Adds a module 'Graphics.UI.Gtk.Layout.Rpn' to gtk2hs. This\nmodule defines a type 'RPN' for operators, and is an instance\nof Monoid class.  You can combine those operators using reverse\npolish notation, as made popular by, say, HP calculators. There\nare operators for layout elements, like expanders, panes,\nboxes and notebooks, and for a few other widgets, like buttons\nand labels. You can include any gtk2hs widget in the stack.";
      buildType = "Simple";
    };
    components = {
      "gtk2hs-rpn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.cairo)
          (hsPkgs.mtl)
        ];
      };
    };
  }