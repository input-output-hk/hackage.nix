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
      specVersion = "1.12";
      identifier = { name = "chart-cli"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/chart-cli#readme";
      url = "";
      synopsis = "Command-line utility to draw charts from input data easily";
      description = "Please see the README on GitHub at <https://github.com/portnov/chart-cli#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "chart" = {
          depends = [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }