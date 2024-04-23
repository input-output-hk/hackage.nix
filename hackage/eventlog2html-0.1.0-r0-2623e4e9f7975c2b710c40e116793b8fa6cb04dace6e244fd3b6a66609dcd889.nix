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
      specVersion = "1.18";
      identifier = { name = "eventlog2html"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010,2011,2015,2017,2018  Claude Heiland-Allen 2019 Matthew Pickering";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering, David Binder, Claude Heiland-Allen";
      homepage = "https://mpickering.github.io/eventlog2html";
      url = "";
      synopsis = "Visualise an eventlog";
      description = "eventlog2html is a library for visualising eventlogs.\nAt the moment, the intended use is to visualise eventlogs\nwhich have heap profiling events, as a replacement to hp2ps\nand hp2pretty.\neventlog2html creates a static webpage which contains\na collection of different interactive charts for analysing\nheap usage. Trace events are displayed on the chart and\nthe charts can be zoomed, scrolled and filtered to give\na more exploratory feel to heap profile analysis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
      exes = {
        "eventlog2html" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eventlog2html" or (errorHandler.buildDepError "eventlog2html"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }