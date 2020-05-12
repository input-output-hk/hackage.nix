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
    flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
      buildexamples = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "synthesizer-inference"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing with dynamic physical dimensions";
      description = "High-level functions which use physical units.\nWe try to abstract from the sample rate using various approaches.\nThe modules are a bit outdated however,\nand I think that the package @synthesizer-dimensional@\nprovides the better design.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."UniqueLogicNP" or (errorHandler.buildDepError "UniqueLogicNP"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            ]);
        buildable = true;
        };
      exes = {
        "alinea" = {
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }