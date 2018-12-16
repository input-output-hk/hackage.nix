{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cairo = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "puzzle-draw";
        version = "0.1.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles.";
      description = "puzzle-draw is a library and tool for drawing pencil\npuzzles using Diagrams. It aims to provide a utility\nlayer on top of Diagrams to help with drawing arbitrary\npuzzles, and to support several specific puzzles types\nIn addition, it includes functionality for parsing\npuzzle data from a YAML file format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
        ] ++ (if flags.cairo
          then [ (hsPkgs.diagrams-cairo) ]
          else [ (hsPkgs.diagrams-svg) ]);
      };
      exes = {
        "drawpuzzle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.puzzle-draw)
            (hsPkgs.diagrams-lib)
            (hsPkgs.yaml)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
          ] ++ (if flags.cairo
            then [ (hsPkgs.diagrams-cairo) ]
            else [ (hsPkgs.diagrams-svg) ]);
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
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