{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simple-actors";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://brandon.si/code/simple-actors-0-1-0-released/";
      url = "";
      synopsis = "A library for more structured concurrent programming, based\non the Actor Model";
      description = "simple-actors is an EDSL-style library for writing\nmore structured concurrent programs, based on the Actor\nModel. Computations are structured as \"Behaviors\" which take a\nsingle input value, perform some 'Action's, and return the\nBehavior to process the next input message it receives.\n\nWe also extend the strict actor model in various elegant ways.\nSee source for this type of discussion.\n\n/CHANGES/: 0.3.0 - 0.4\n\n- extend 'Control.Concurrent.Actors.spawn' to transparently support \"joined\nmailboxes\", i.e. join-patterns, supporting synchronization between actors.\n'Control.Concurrent.Actors.spawn' becomes polymorphic in new 'Control.Concurrent.Actors.Sources' class\n\n- old @spawn_@ subsumed by polymorphic @spawn@, with @()@\n\n- @send@ and other send-like functions restricted to Mailboxes, use 'out' to convert arbitrary chans to Mailboxes\n\n- productMb, faninMb, and fanoutMb renamed 'Control.Concurrent.Actors.contraProduct', 'Control.Concurrent.Actors.contraFanin', and 'Control.Concurrent.Actors.contraFanout', and given more general types\n\n- old @spawnReading@ removed\n";
      buildType = "Simple";
    };
    components = {
      "simple-actors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chan-split)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.contravariant)
        ];
      };
    };
  }