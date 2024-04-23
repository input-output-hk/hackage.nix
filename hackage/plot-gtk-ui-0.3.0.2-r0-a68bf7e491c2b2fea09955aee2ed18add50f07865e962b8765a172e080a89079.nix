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
      specVersion = "1.18";
      identifier = { name = "plot-gtk-ui"; version = "0.3.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13@iitbhu.ac.in";
      author = "Sumit Sahrawat";
      homepage = "https://github.com/sumitsahrawat/plot-gtk-ui";
      url = "";
      synopsis = "A quick way to use Mathematica like Manipulation abilities";
      description = "A pre-built ui for plotting based on plot. Quicker to use than\nplot-gtk, but less configurable, and less versatile.\n\nOnly provides ability to plot mathematical functions. But, also\nallows dynamic plotting functionality similar to Mathematica.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."plot" or (errorHandler.buildDepError "plot"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
        ];
        buildable = true;
      };
    };
  }