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
      identifier = { name = "rungekutta2"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marco Zocca (ocramz)";
      author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      homepage = "https://github.com/ocramz/rungekutta";
      url = "";
      synopsis = "Explicit Runge-Kutta methods of various orders (fork of 'rungekutta')";
      description = "This package contains a collection of explicit Runge-Kutta\nmethods of various orders, some with fixed-size steps (no\nerror estimate) and some intended for adaptive stepsize\n(ie, they include an error estimate). There are a couple of\ntest programs which include some adaptive stepsize control,\nhowever there is not yet any such routine in the library\nitself.\n\nThis package started as a fork of 'rungekutta-1.0.2' (which had been dormant since 2009), with proper documentation and modern project structure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "testrk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rungekutta2" or (errorHandler.buildDepError "rungekutta2"))
            ];
          buildable = true;
          };
        "arenstorf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rungekutta2" or (errorHandler.buildDepError "rungekutta2"))
            ];
          buildable = true;
          };
        "volterra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rungekutta2" or (errorHandler.buildDepError "rungekutta2"))
            ];
          buildable = true;
          };
        "volterra2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rungekutta2" or (errorHandler.buildDepError "rungekutta2"))
            ];
          buildable = true;
          };
        };
      };
    }