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
      specVersion = "1.24";
      identifier = { name = "machines-amazonka"; version = "0.7.1"; };
      license = "GPL-3.0-only";
      copyright = "©2017 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "";
      url = "";
      synopsis = "Machine transducers for Amazonka calls.";
      description = "This provides several modules for managing AWS\nresources using the Machines library. It supports\nrequest modifiers, arbitrary filters, and\npaginated responses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-autoscaling" or (errorHandler.buildDepError "amazonka-autoscaling"))
          (hsPkgs."amazonka-ec2" or (errorHandler.buildDepError "amazonka-ec2"))
          (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
          (hsPkgs."amazonka-sts" or (errorHandler.buildDepError "amazonka-sts"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."concurrent-machines" or (errorHandler.buildDepError "concurrent-machines"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."liblawless" or (errorHandler.buildDepError "liblawless"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }