{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "uuagc-cabal";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Atze Dijkstra (atzedijkstra@gmail.com)";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "https://github.com/UU-ComputerScience/uuagc";
      url = "";
      synopsis = "Cabal plugin for UUAGC";
      description = "Cabal plugin for the Universiteit Utrecht Attribute Grammar System";
      buildType = "Simple";
    };
    components = {
      "uuagc-cabal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.uulib)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }