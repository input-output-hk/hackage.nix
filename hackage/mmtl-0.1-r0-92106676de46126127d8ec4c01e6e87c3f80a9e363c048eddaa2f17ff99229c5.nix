{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "mmtl"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mjj@cs.nott.ac.uk";
      author = "Mauro Jaskelioff";
      homepage = "";
      url = "";
      synopsis = "Modular Monad transformer library";
      description = "A modular monad transformer library, (almost) a drop-in replacement for\nthe monad transformer library (mtl). It provides a uniform lifting of\noperations through any monad transformer.\nKnown differences with mtl:\n- It provides a uniform lifting of operations for\nany monad transformer.\n- It does not provide a RWS monad (but you can build it yourself ;)\n- The class MonadTrans requires a new member function tmap.\n- The lifting of callCC through StateT coincides with\nthe lifting in MonadLib, but not with the lifting in mtl.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }