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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "plot"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/plot";
      url = "";
      synopsis = "A plotting library, exportable as eps/pdf/svg/png or renderable with gtk";
      description = "A package for creating plots, built on top of the Cairo rendering engine.\n\nAn ambitious attempt to replace gnuplot.\n\nMonadic actions are used to configure a figure, which is a (rxc) array of subplots.\nEach plot displays a graph with optional heading, labels, legend, and annotations.\nThe annotations themselves may be used to draw diagrams.\n\nA figure is preprocessed in preparation for rendering by the Cairo renderer.\nThe Cairo library can be used to output the figure to PS, PDF, SVG, and PNG file formats,\nor to display the figure in a GTK Drawable context.  (see package 'plot-gtk').\n\nThe preprocessed figure can be embedded as an arbitrary Cairo render, including in a diagram\ncreated with the diagram package.  Conversely, arbitrary Cairo renders can be embedded in\nthe data region of a 'Figure'.\n\nThe data series are type \"Data.Packed.Vector\" from hmatrix, which, when hmatrix\nis compiled with '-fvector', is a synonym for \"Data.Vector.Storable\" from the\nvector package and are thus compatible with packages such as statistics.\n\nThe example in Graphics.Rendering.Plot can be viewed at\n<http://code.haskell.org/plot/examples/perturbed-sine.png>\n\nChanges in plot 0.1.1\n\n* added candle and whisker plots\n\nChanges in plot 0.1.2\n\n* axis join rendering improvement\n* added annotations\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        buildable = true;
      };
    };
  }