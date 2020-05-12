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
      identifier = { name = "SoOSiM"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, S(o)OS Consortium";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "S(o)OS Consortium";
      homepage = "http://www.soos-project.eu/";
      url = "";
      synopsis = "Abstract full system simulator";
      description = "SoOSiM is a simulator developed for the purpose of exploring operating\nsystem concepts and operating system modules. The simulator provides a\nhighly abstracted view of a computing system, consisting of computing\nnodes, and components that are concurrently executed on these nodes.\nOS modules are subsequently modelled as components that progress as a\nresult of reacting to two types of events: messages from other components,\nor a system-wide tick event. Using this abstract view, a developer can\nquickly formalize assertions regarding the interaction between operating\nsystem modules and applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }