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
      specVersion = "2.4";
      identifier = { name = "fractionizer"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr-Zhabenko";
      homepage = "";
      url = "";
      synopsis = "Allows to approximate the fractional numbers in the range [0.005, 2/3)  with sum of two unit fractions of special types.";
      description = "Inspired by the ancient Egyptian mathematics. See the ideas description and formulation in the [related draft paper.](https://www.academia.edu/100427677/Fraction_approximation_for_the_range_of_0_005_2_3_related_to_music_melody_composing_and_using_Haskell)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }