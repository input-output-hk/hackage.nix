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
      specVersion = "1.2";
      identifier = {
        name = "TreeCounter";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Sutherland (julian.sutherland10@imperial.ac.uk)";
      author = "Julian Sutherland";
      homepage = "https://github.com/Julek";
      url = "";
      synopsis = "Wait-free Tree Counter";
      description = "A wait-free tree counter. Creates a binary tree of counters, with each leaf associated with a thread. Leaves can be split, creating a new leaf for the current thread and another that can be used by another thread. Each thread will act on different leaves, meaning the actions are wait-free. A read is performed on the counter by recursively traversing it and summing the value of the counters in the nodes and leaves of the tree. (UPDATE: removed useless dependency)";
      buildType = "Simple";
    };
    components = {
      "TreeCounter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ref-mtl)
          (hsPkgs.stm)
        ];
      };
    };
  }