{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "aivika";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika";
      url = "";
      synopsis = "A multi-paradigm simulation library";
      description = "Aivika is a small simulation library that covers many paradigms.\nIt allows integrating a system of ordinary differential equations.\nAlso it can be applied to the Discrete Event Simulation. It supports\nthe event-oriented, process-oriented and activity-oriented paradigms.\nAivika also supports the Agent-based Modeling. Finally, it can be applied\nto System Dynamics.\n\nThe library widely uses monads. The dynamic system is represented as\na computation in the Dynamics monad. There is also the Process\nmonad to represent the discontinuous processes which can suspend\nat any time and then resume later. Everything else is expressed through\nthese two monads, including the event handlers, agent handlers and even\nintegrals.\n\nThe PDF documentation is available at\n<https://github.com/dsorokin/aivika/blob/master/doc/aivika.pdf>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }