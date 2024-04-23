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
      specVersion = "1.10";
      identifier = { name = "igrf"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "douglas.mcclean@gmail.com";
      author = "J. Douglas McClean";
      homepage = "https://github.com/dmcclean/igrf";
      url = "";
      synopsis = "International Geomagnetic Reference Field";
      description = "An implemetation of the International Geomagnetic Reference Field, a model of the Earth's magnetic field.\n\nIncludes model coefficients from the 11th Edition of the IGRF.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        buildable = true;
      };
    };
  }