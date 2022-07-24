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
      specVersion = "2.2";
      identifier = { name = "uniformBase"; version = "0.1.4"; };
      license = "GPL-2.0-only";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <uniform@gerastree.at>";
      author = "Andrew Frank";
      homepage = "";
      url = "";
      synopsis = "A uniform base to build apps on";
      description = "Goals:\n\n- reducing the complexity for the programmer of applications,\n\n- functions with identical semantics independent of representation,\n\n- all functions are total (or become so using Maybe or Either),\n\n- compatible error reporting for all packages,\n\n- avoid name clashes with other packages and assume the regular prelude,\n\n- performance is NOT a goal - once the program logic is confirmed and tested, performance improvements can be achieved based on observations\n\nThe packages included here deal with\n\n- a generally usable zero (null) value and other simplistic\nalgebras,\n\n- handling of text independent of represenations and principled conversion between representations,\n\n- a minimal error reporting as text error messages,\n\n- bringing together functions to handle time,\n\n- uniform functions to handle files and filepaths (`Filepath` and `Path`).\n\nPlease see the README on GitHub at <https://github.com/andrewufrank/uniformBase/readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."uniform-algebras" or (errorHandler.buildDepError "uniform-algebras"))
          (hsPkgs."uniform-error" or (errorHandler.buildDepError "uniform-error"))
          (hsPkgs."uniform-fileio" or (errorHandler.buildDepError "uniform-fileio"))
          (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
          (hsPkgs."uniform-time" or (errorHandler.buildDepError "uniform-time"))
          ];
        buildable = true;
        };
      };
    }