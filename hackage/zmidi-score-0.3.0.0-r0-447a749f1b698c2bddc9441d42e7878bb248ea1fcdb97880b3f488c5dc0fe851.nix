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
      specVersion = "1.8";
      identifier = { name = "zmidi-score"; version = "0.3.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "2012--2014, Utrecht University";
      maintainer = "W.B.deHaas@uu.nl";
      author = "W. Bas de Haas";
      homepage = "https://bitbucket.org/bash/zmidi-score";
      url = "";
      synopsis = "Representing MIDI a simple score.";
      description = "Representing MIDI data as a simple score using the zmidi-core library.  ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zmidi-core" or (errorHandler.buildDepError "zmidi-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          ];
        buildable = true;
        };
      };
    }