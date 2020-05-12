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
      quickcheck = false;
      smallcheck = false;
      hunit = false;
      hspec = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "DMuCheck"; version = "0.3.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/d-mucheck";
      url = "";
      synopsis = "Distributed Mutation Analysis framework for MuCheck";
      description = "This package is a wrapper over the mutation analysis\nlibrary MuCheck. It provides a basic process based\nparallelization of mutant execution, and also a\nclient and server based distributed mode of mutant\nexecution. Currently it supports QuickCheck, SmallCheck,\nHUnit and HSpec";
      buildType = "Simple";
      };
    components = {
      exes = {
        "d-mucheck" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."MuCheck" or (errorHandler.buildDepError "MuCheck"))
            ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."MuCheck-QuickCheck" or (errorHandler.buildDepError "MuCheck-QuickCheck"))) ++ (pkgs.lib).optional (flags.smallcheck) (hsPkgs."MuCheck-SmallCheck" or (errorHandler.buildDepError "MuCheck-SmallCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."MuCheck-HUnit" or (errorHandler.buildDepError "MuCheck-HUnit"))) ++ (pkgs.lib).optional (flags.hspec) (hsPkgs."MuCheck-Hspec" or (errorHandler.buildDepError "MuCheck-Hspec"));
          buildable = true;
          };
        "d-master" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."MuCheck" or (errorHandler.buildDepError "MuCheck"))
            ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."MuCheck-QuickCheck" or (errorHandler.buildDepError "MuCheck-QuickCheck"))) ++ (pkgs.lib).optional (flags.smallcheck) (hsPkgs."MuCheck-SmallCheck" or (errorHandler.buildDepError "MuCheck-SmallCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."MuCheck-HUnit" or (errorHandler.buildDepError "MuCheck-HUnit"))) ++ (pkgs.lib).optional (flags.hspec) (hsPkgs."MuCheck-Hspec" or (errorHandler.buildDepError "MuCheck-Hspec"));
          buildable = true;
          };
        "d-slave" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."MuCheck" or (errorHandler.buildDepError "MuCheck"))
            ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."MuCheck-QuickCheck" or (errorHandler.buildDepError "MuCheck-QuickCheck"))) ++ (pkgs.lib).optional (flags.smallcheck) (hsPkgs."MuCheck-SmallCheck" or (errorHandler.buildDepError "MuCheck-SmallCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."MuCheck-HUnit" or (errorHandler.buildDepError "MuCheck-HUnit"))) ++ (pkgs.lib).optional (flags.hspec) (hsPkgs."MuCheck-Hspec" or (errorHandler.buildDepError "MuCheck-Hspec"));
          buildable = true;
          };
        };
      };
    }