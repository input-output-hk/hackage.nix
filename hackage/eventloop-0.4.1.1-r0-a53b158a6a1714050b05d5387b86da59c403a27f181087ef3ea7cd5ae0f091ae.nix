let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eventloop"; version = "0.4.1.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."timers" or (buildDepError "timers"))
          (hsPkgs."suspend" or (buildDepError "suspend"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      };
    }