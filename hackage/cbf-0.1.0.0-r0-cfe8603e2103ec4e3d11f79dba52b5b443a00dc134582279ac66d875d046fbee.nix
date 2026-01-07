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
      specVersion = "3.4";
      identifier = { name = "cbf"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "philipp.middendorf@desy.de";
      author = "Philipp Middendorf";
      homepage = "https://github.com/pmiddend/cbf-hs";
      url = "";
      synopsis = "Bindings to read Crystallographic Binary Files (mostly from detectors)";
      description = "Parsing routines for the Crystallographic Binary File (CBF) format.\n\nThe project currently only supports CBF files written by Dectris Pilatus detectors, as this is its primary use case for now. It would be doable to support more of CBF, but the goal of this is to implement all the functionality in pure Haskell, not by having a C binding to cbflib.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "cbf-bench-binary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cbf" or (errorHandler.buildDepError "cbf"))
          ];
          buildable = true;
        };
      };
      tests = {
        "cbf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cbf" or (errorHandler.buildDepError "cbf"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cbf" or (errorHandler.buildDepError "cbf"))
          ];
          buildable = true;
        };
      };
    };
  }