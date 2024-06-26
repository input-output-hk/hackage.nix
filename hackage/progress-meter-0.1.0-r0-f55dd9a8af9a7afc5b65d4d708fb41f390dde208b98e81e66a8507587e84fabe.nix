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
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "progress-meter"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2017 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/esoeylemez/progress-meter";
      url = "";
      synopsis = "Live diagnostics for concurrent activity";
      description = "This library can be used to display progress meters or\nother diagnostics for concurrently running actions.  It supports\ndynamic creation and removal of new sub-meters as well es correct\nbehaviour when printing diagnostics that are not part of the\nprogress meter and should just scroll by.\n\nThe @System.ProgressMeter@ module contains a tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ] ++ pkgs.lib.optionals (flags.devel) [
          (hsPkgs."rapid" or (errorHandler.buildDepError "rapid"))
          (hsPkgs."rapid-term" or (errorHandler.buildDepError "rapid-term"))
        ];
        buildable = true;
      };
    };
  }