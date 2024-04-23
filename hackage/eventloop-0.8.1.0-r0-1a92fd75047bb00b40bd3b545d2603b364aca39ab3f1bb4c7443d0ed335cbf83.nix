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
      identifier = { name = "eventloop"; version = "0.8.1.0"; };
      license = "BSD-3-Clause";
      copyright = "University of Twente 2015 | Sebastiaan la Fleur 2015";
      maintainer = "sebastiaan.la.fleur@gmail.com";
      author = "Sebastiaan la Fleur";
      homepage = "-";
      url = "";
      synopsis = "A different take on an IO system. Based on Amanda's IO loop, this eventloop takes a function that maps input events to output events. It can easily be extended by modules that represent IO devices or join multiple modules together.";
      description = "A different take on an IO system. Based on Amanda's IO loop, this eventloop takes a function that maps input events to output events. It can easily be extended by modules that represent IO devices or join multiple modules together.\nEach module exists of a initialize and teardown function that are both called once at startup and shutting down. During run-time, a module can provice a preprocessor function (which transforms input events before they get to the eventloop),\nand a postprocessor function (which transforms output events after they are received from the eventloop but before they are send off). Next to these bookkeeping functions, a module can exist of a (check for events and an event retrieve) function pair\nwhich result in input events and an addition to the event sender function which handles output events. This results in the following states:\n|Start|:    initialize -> |Run-Time| -> teardown\n|Run-Time|: eventCheckers -  Yes > preprocessors -> eventloop -> postprocessors -> event sender -> |Run-Time|\n|- No  > |Run-Time|\nEach module has a piece of \"memory\"/state which is defined by the module itself and all of the module states are combined in the IO state. When writing/installing a module, modifications has to be made at certain points in the code\ndue to the poor modularity of Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."timers" or (errorHandler.buildDepError "timers"))
          (hsPkgs."suspend" or (errorHandler.buildDepError "suspend"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."concurrent-utilities" or (errorHandler.buildDepError "concurrent-utilities"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }