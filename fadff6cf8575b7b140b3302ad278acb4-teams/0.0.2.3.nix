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
        name = "teams";
        version = "0.0.2.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "aditya DOT mahajan AT yale DOT edu";
      author = "Aditya Mahajan";
      homepage = "";
      url = "";
      synopsis = "Graphical modeling tools for sequential teams";
      description = "Graphical modeling tools for sequential teams";
      buildType = "Simple";
    };
    components = {
      "teams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fgl)
          (hsPkgs.containers)
          (hsPkgs.graphviz)
        ];
      };
    };
  }