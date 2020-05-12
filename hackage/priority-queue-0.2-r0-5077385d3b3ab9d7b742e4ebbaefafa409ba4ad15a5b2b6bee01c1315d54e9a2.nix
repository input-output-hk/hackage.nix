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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "priority-queue"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "http://code.haskell.org/~mokus/priority-queue";
      url = "";
      synopsis = "Simple implementation of a priority queue.";
      description = "Simple implementation of a priority queue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."reord" or (errorHandler.buildDepError "reord"))
          (hsPkgs."stateref" or (errorHandler.buildDepError "stateref"))
          (hsPkgs."queue" or (errorHandler.buildDepError "queue"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }