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
    flags = { drmaa = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "SciFlow"; version = "0.6.0"; };
      license = "MIT";
      copyright = "(c) 2015-2017 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is a DSL for building scientific workflows.\nWorkflows built with SciFlow can be run either on desktop\ncomputers or in grid computing environments that\nsupport DRMAA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (flags.drmaa) (hsPkgs."drmaa" or (errorHandler.buildDepError "drmaa"));
        buildable = true;
        };
      };
    }