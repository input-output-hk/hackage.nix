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
        name = "dawg";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/dawg";
      url = "";
      synopsis = "Directed acyclic word graphs";
      description = "The library implements /directed acyclic word graphs/ (DAWGs) internaly\nrepresented as /minimal acyclic deterministic finite-state automata/.\n\nThe \"Data.DAWG\" module provides fast insert and delete operations which\ncan be used to build the automaton on-the-fly.\nThe automaton from the \"Data.DAWG.Static\" module has lower memory\nfootprint and provides static hashing functionality.";
      buildType = "Simple";
    };
    components = {
      "dawg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.vector-binary)
          (hsPkgs.mtl)
        ];
      };
    };
  }