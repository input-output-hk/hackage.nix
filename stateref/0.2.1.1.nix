{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      usestm = true;
      usetmvar = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stateref";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "http://darcs.deepbondi.net/stateref";
        url = "";
        synopsis = "Abstraction for things that work like IORef.";
        description = "A collection of type-classes generalizing the\nread\\/write\\/modify operations for stateful variables\nprovided by things like IORef, TVar, &c.";
        buildType = "Simple";
      };
      components = {
        stateref = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ] ++ pkgs.lib.optional _flags.usestm hsPkgs.stm;
        };
      };
    }