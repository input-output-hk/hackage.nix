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
      specVersion = "1.8.0";
      identifier = { name = "gsl-random"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Patrick Perry,\nTracy Wadleigh";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry,\nTracy Wadleigh";
      homepage = "http://github.com/patperry/hs-gsl-random";
      url = "";
      synopsis = "Bindings the the GSL random number generation facilities.";
      description = "Bindings to the GNU Scientific Library random and quasi-random number\ngenerators and random distributions.\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }