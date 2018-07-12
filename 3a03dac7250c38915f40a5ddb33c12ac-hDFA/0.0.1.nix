{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hDFA";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2010, 2011 Peter Gammie, some parts (C) 1998-2009 Gerwin Klein <lsf@jflex.de>";
        maintainer = "peteg42@gmail.com";
        author = "Peter Gammie";
        homepage = "";
        url = "";
        synopsis = "A simple library for representing and minimising DFAs.";
        description = "hDFA provides a simple API for representing and minimizing\ndeterministic finite automata (DFAs) using an explicit representation\n(a transition matrix). It includes a port of the Hopcroft\nminimization algorithm in JFlex to C.";
        buildType = "Simple";
      };
      components = {
        "hDFA" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }