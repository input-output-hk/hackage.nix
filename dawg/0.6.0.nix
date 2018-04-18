{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dawg";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/dawg";
        url = "";
        synopsis = "Directed acyclic word graphs";
        description = "The library implements /directed acyclic word graphs/ (DAWGs) internaly\nrepresented as /minimal acyclic deterministic finite-state automata/.\n\nThe \"Data.DAWG\" module provides fast insert and delete operations which\ncan be used to build the automaton on-the-fly.\nAutomaton from the \"Data.DAWG.Frozen\" module is ,,immutable'', but it\nhas lower memory footprint and provides perfect hashing functionality.";
        buildType = "Simple";
      };
      components = {
        dawg = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.vector
            hsPkgs.vector-binary
            hsPkgs.mtl
          ];
        };
      };
    }