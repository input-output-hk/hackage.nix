{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fsmActions";
          version = "0.2.0";
        };
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
        fsmActions = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fgl
            hsPkgs.graphviz
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
          ];
        };
      };
    }