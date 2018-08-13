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
        name = "uhc-util";
        version = "0.1.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "Atze Dijkstra & Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc-util";
      url = "";
      synopsis = "UHC utilities";
      description = "General purpose utilities for UHC and related tools";
      buildType = "Simple";
    };
    components = {
      "uhc-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.fgl)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.process)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.uulib)
          (hsPkgs.time-compat)
          (hsPkgs.time)
          (hsPkgs.fclabels)
          (hsPkgs.logict-state)
          (hsPkgs.pqueue)
          (hsPkgs.vector)
          (hsPkgs.chr-pretty)
          (hsPkgs.chr-parse)
          (hsPkgs.chr-data)
          (hsPkgs.chr-core)
        ];
      };
    };
  }