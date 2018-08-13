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
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles.";
      description = "puzzle-draw is a library for drawing pencil puzzles\nusing Diagrams. It aims to provide a utility layer\non top of Diagrams to help with drawing arbitrary\npuzzles, as well as supporting several specific\npuzzle types directly. In addition, it includes\nfunctionality for parsing puzzle data from a\nYAML file format.";
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
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.blaze-svg)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.bytestring)
            (hsPkgs.puzzle-draw)
          ];
        };
      };
    };
  }