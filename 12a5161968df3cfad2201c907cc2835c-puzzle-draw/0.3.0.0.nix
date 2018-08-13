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
      specVersion = "1.8";
      identifier = {
        name = "puzzle-draw";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "rob@vllmrt.net";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles.";
      description = "puzzle-draw is a library and tool for drawing pencil\npuzzles using Diagrams. It aims to provide a utility\nlayer on top of Diagrams to help with drawing arbitrary\npuzzles, and to support several specific puzzles types\nIn addition, it includes functionality for parsing\npuzzle data from a YAML file format.";
      buildType = "Simple";
    };
    components = {
      "puzzle-draw" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.diagrams-lib)
          (hsPkgs.parsec)
          (hsPkgs.yaml)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.SVGFonts)
          (hsPkgs.vector-space)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.filepath)
          (hsPkgs.linear)
          (hsPkgs.diagrams-rasterific)
        ];
      };
      exes = {
        "drawpuzzle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.puzzle-draw)
            (hsPkgs.diagrams-lib)
            (hsPkgs.yaml)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
            (hsPkgs.diagrams-rasterific)
          ];
        };
        "checkpuzzle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.puzzle-draw)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.hspec)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.blaze-svg)
            (hsPkgs.diagrams-lib)
            (hsPkgs.bytestring)
            (hsPkgs.puzzle-draw)
          ];
        };
      };
    };
  }