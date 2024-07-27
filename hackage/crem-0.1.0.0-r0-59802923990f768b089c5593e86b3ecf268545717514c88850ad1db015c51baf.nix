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
    flags = { errors = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "crem"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Tweag I/O";
      maintainer = "marco.perone@tweag.io";
      author = "Marco Perone";
      homepage = "https://github.com/tweag/crem";
      url = "";
      synopsis = "Compositional representable executable machines";
      description = "`crem` stands for __c__ompositional __r__epresentable __e__xecutable __m__achines. It allows creating state machines (Mealy machines in fact), compose them to build bigger machines out of smaller ones and then run them and draw their flow and their state space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      sublibs = {
        "crem-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crem" or (errorHandler.buildDepError "crem"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      exes = {
        "hobbit-game" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crem" or (errorHandler.buildDepError "crem"))
            (hsPkgs."crem".components.sublibs.crem-examples or (errorHandler.buildDepError "crem:crem-examples"))
          ];
          buildable = true;
        };
        "hobbit-map" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crem" or (errorHandler.buildDepError "crem"))
            (hsPkgs."crem".components.sublibs.crem-examples or (errorHandler.buildDepError "crem:crem-examples"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "crem-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crem" or (errorHandler.buildDepError "crem"))
            (hsPkgs."crem".components.sublibs.crem-examples or (errorHandler.buildDepError "crem:crem-examples"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
          ];
          buildable = true;
        };
        "crem-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crem" or (errorHandler.buildDepError "crem"))
            (hsPkgs."crem".components.sublibs.crem-examples or (errorHandler.buildDepError "crem:crem-examples"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }