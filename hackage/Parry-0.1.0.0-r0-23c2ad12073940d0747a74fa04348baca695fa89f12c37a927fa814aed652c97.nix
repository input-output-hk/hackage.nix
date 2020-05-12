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
      identifier = { name = "Parry"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "pierre-etienne.meunier@lif.univ-mrs.fr";
      author = "Pierre-Etienne Meunier";
      homepage = "http://parry.lif.univ-mrs.fr";
      url = "";
      synopsis = "A proven synchronization server for high performance computing.";
      description = "Parry is a scheduler for the exhaustive exploration of tree-like spaces. It is designed to be robust to client crashes and cluster walltimes, and is guaranteed to never \\\"forget about\\\" a job until it is done.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if !system.isWindows
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ];
        buildable = true;
        };
      };
    }