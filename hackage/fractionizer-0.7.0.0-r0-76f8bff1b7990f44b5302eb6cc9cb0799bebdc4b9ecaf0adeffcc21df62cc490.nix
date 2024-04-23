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
      identifier = { name = "fractionizer"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr-Zhabenko";
      homepage = "";
      url = "";
      synopsis = "Allows to approximate the fractional numbers in the range [0.005, 1] with sum of 2 or 3 unit fractions of special types.";
      description = "Inspired by the ancient Egyptian mathematics. See the ideas description and formulation in the [related draft paper.](https://www.academia.edu/100514742/Fraction_approximation_for_the_range_of_0_005_1_related_to_music_melody_composing_and_using_Haskell_and_unit_fractions)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }