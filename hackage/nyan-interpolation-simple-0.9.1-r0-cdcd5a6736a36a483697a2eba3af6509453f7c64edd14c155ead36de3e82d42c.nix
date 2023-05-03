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
      specVersion = "2.0";
      identifier = { name = "nyan-interpolation-simple"; version = "0.9.1"; };
      license = "MPL-2.0";
      copyright = "2022 Serokell <https://serokell.io>";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/nyan-interpolation#readme";
      url = "";
      synopsis = "Simplified lightweight interpolation";
      description = "This is a variation of 'nyan-interpolation' library that has no `haskell-src-exts` dependency, at the cost of not being able to interpolate arbitrary exressions, only variables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nyan-interpolation-core" or (errorHandler.buildDepError "nyan-interpolation-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }