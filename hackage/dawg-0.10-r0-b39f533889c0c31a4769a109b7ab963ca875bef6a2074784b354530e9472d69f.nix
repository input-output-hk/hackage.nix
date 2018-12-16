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
        name = "dawg";
        version = "0.10";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/dawg";
      url = "";
      synopsis = "Directed acyclic word graphs";
      description = "The library implements /directed acyclic word graphs/ (DAWGs) internaly\nrepresented as /minimal acyclic deterministic finite-state automata/.\n\nThe \"Data.DAWG.Dynamic\" module provides fast insert and delete operations\nwhich can be used to build the automaton on-the-fly.  The automaton from\nthe \"Data.DAWG.Static\" module has lower memory footprint and provides\nstatic hashing functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.vector-binary)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }