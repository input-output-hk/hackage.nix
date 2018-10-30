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
      specVersion = "1.6";
      identifier = {
        name = "fsmActions";
        version = "0.4.3";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
        ];
      };
    };
  }