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
      specVersion = "1.6";
      identifier = { name = "ruff"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011,2015 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://code.mathr.co.uk/ruff";
      url = "";
      synopsis = "relatively useful fractal functions";
      description = "A library for analysis and exploration of fractals, providing\nangled internal addresses, external ray tracing, nucleus and\nbond point finding, and iterations for images of the Mandelbrot\nSet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
          ];
        buildable = true;
        };
      };
    }