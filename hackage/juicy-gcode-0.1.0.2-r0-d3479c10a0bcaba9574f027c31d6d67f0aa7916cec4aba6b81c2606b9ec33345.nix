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
      identifier = { name = "juicy-gcode"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dlacko@gmail.com";
      author = "dlacko";
      homepage = "https://github.com/domoszlai/juicy-gcode";
      url = "";
      synopsis = "SVG to G-Code converter";
      description = "SVG to G-code converter that aims to support most SVG features. The flavor of the generated G-Code can be influenced providing a configuration file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "juicy-gcode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."svg-tree" or (errorHandler.buildDepError "svg-tree"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
      };
    };
  }