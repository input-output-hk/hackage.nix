{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "plot"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2012";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/plot";
      url = "";
      synopsis = "A plotting library, exportable as eps/pdf/svg/png or renderable with gtk";
      description = "A package for creating plots, built on top of the Cairo rendering engine.\n\nAn ambitious attempt to replace gnuplot.\n\nMonadic actions are used to configure a figure, which is a (rxc) array of subplots.\nEach plot displays a graph with optional heading, labels, legend, and annotations.\nThe annotations themselves may be used to draw diagrams.\n\nA figure is preprocessed in preparation for rendering by the Cairo renderer.\nThe Cairo library can be used to output the figure to PS, PDF, SVG, and PNG file formats,\nor to display the figure in a GTK Drawable context.  (see package 'plot-gtk').\n\nThe preprocessed figure can be embedded as an arbitrary Cairo render, including in a diagram\ncreated with the diagram package.  Conversely, arbitrary Cairo renders can be embedded in\nthe data region of a 'Figure'.\n\nThe data series are type \"Data.Packed.Vector\" from hmatrix, which, when hmatrix\nis compiled with '-fvector', is a synonym for \"Data.Vector.Storable\" from the\nvector package and are thus compatible with packages such as statistics.\n\nThe example in Graphics.Rendering.Plot can be viewed at\n<http://code.haskell.org/plot/examples/perturbed-sine.png>\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.MaybeT)
          (hsPkgs.pango)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.hmatrix)
          ];
        };
      };
    }