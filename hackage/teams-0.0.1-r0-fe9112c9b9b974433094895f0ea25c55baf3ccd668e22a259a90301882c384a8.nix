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
        name = "teams";
        version = "0.0.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fgl)
          (hsPkgs.containers)
          (hsPkgs.graphviz)
        ];
      };
    };
  }