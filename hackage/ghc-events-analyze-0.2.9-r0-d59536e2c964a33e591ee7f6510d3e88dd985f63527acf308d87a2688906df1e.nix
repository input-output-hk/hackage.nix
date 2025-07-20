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
      identifier = { name = "ghc-events-analyze"; version = "0.2.9"; };
      license = "BSD-3-Clause";
      copyright = "2013-2025 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries, Duncan Coutts, Mikolaj Konarski";
      homepage = "";
      url = "";
      synopsis = "Analyze and visualize event logs";
      description = "ghc-events-analyze is a simple Haskell profiling tool that\nuses GHC's eventlog system. It helps with some profiling\nuse cases that are not covered by the existing GHC\nprofiling modes or tools. It has two major features:\n\n1. While ThreadScope shows CPU activity across all your\ncores, ghc-events-analyze shows CPU activity across all\nyour Haskell threads.\n\n2. It lets you label periods of time during program\nexecution (by instrumenting your code with special trace\ncalls) and then lets you visualize those time periods or\nget statistics on them.\n\nIt is very useful for profiling code when ghc's normal\nprofiling mode is not available, or when using profiling\nmode would perturb the code too much. It is also useful\nwhen you want time-profiling information with a breakdown\nover time rather than totals for the whole run.\n\nThe blog post\n<http://www.well-typed.com/blog/2014/02/ghc-events-analyze/ Performance profiling with ghc-events-analyze>\ndescribes the motivation in more detail.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-events-analyze" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "blogpost-examples-nt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
          buildable = true;
        };
        "blogpost-examples-threaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
          buildable = true;
        };
      };
    };
  }