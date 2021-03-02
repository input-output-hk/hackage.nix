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
      specVersion = "1.2";
      identifier = { name = "aivika"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "";
      url = "";
      synopsis = "A multi-paradigm simulation library";
      description = "Aivika is a multi-paradigm simulation library. It allows us to integrate\na system of ordinary differential equations. Also it can be applied to\nthe Discrete Event Simulation. It supports the event-oriented,\nprocess-oriented and activity-oriented paradigms. Aivika also supports\nthe Agent-based Modeling. Finally, it can be applied to System Dynamics.\n\nThe library widely uses monads. The dynamic system is represented as\na computation in the Dynamics monad. There is also the DynamicsProc\nmonad to represent the discontinuous processes which can be suspended\nat any time and then resumed later. Everything else is expressed through\nthese two monads, including the events, agent handlers and even integrals.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }