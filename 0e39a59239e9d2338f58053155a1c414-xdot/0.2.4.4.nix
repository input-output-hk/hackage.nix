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
      specVersion = "1.10";
      identifier = {
        name = "xdot";
        version = "0.2.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012-2013";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "";
      url = "";
      synopsis = "Parse Graphviz xdot files and interactively view them using GTK and Cairo";
      description = "Parse Graphviz xdot files and interactively view them using\nGTK and Cairo.\n\nCurrently not all xdot features are supported. Nodes and\nedges can be highlighted by hovering them and clicked.\n\nFor an example of using this library try the accompanying\n@Demo.hs@ with the dot-files in @dot-examples/@.\n\nThis library was originally written as part of ghc-vis, but\nis now a seperate project, in case anyone else may have a\nuse for it.";
      buildType = "Simple";
    };
    components = {
      "xdot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          (hsPkgs.graphviz)
          (hsPkgs.text)
          (hsPkgs.polyparse)
        ];
      };
      exes = {
        "xdot-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.graphviz)
            (hsPkgs.gtk)
            (hsPkgs.text)
            (hsPkgs.xdot)
          ];
        };
      };
    };
  }