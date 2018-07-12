{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hDFA";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2012 Peter Gammie, original minimisation algorithm implementation in C++ (C) Antti Valmari 2011";
        maintainer = "peteg42@gmail.com";
        author = "Peter Gammie";
        homepage = "";
        url = "";
        synopsis = "A simple library for representing and minimising DFAs.";
        description = "hDFA provides a simple API for representing and minimizing\ndeterministic finite automata (DFAs) using an explicit representation\n(a list of transitions). It includes a port of Antti Valmari's\nefficient DFA minimization algorithm from C++ to C. (See A. Valmari,\n\"Fast brief practical DFA minimization\" Information Processing\nLetters 112(6) 2012.)";
        buildType = "Simple";
      };
      components = {
        "hDFA" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.process
          ];
        };
      };
    }