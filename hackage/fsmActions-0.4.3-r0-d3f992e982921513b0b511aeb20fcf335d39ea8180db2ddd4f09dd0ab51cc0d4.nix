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
      specVersion = "1.6";
      identifier = { name = "fsmActions"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Andy Gimblett <haskell@gimbo.org.uk>";
      maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
      author = "Andy Gimblett <haskell@gimbo.org.uk>";
      homepage = "http://projects.haskell.org/fsmActions/";
      url = "";
      synopsis = "Finite state machines and FSM actions";
      description = "This is a library for representing and manipulating finite state\nmachines (FSMs) in Haskell, with an emphasis on computing the\neffects of sequences of transitions across entire machines (which\nwe call actions), and in particular investigating action\nequivalences between such sequences.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }