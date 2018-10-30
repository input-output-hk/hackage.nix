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
      specVersion = "1.2";
      identifier = {
        name = "fingertree-psqueue";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Cale Gibbard";
      maintainer = "cgibbard@gmail.com";
      author = "Cale Gibbard";
      homepage = "";
      url = "";
      synopsis = "Implementation of priority search queues as finger trees.";
      description = "An implementation of priority search queues: a datastructure holding key/priority bindings having fast\noperations both for extracting the element with minimum priority and for modifying and looking up elements\nby key.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fingertree)
        ];
      };
    };
  }