{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-pandoc"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Daniel Bergey";
      homepage = "";
      url = "";
      synopsis = "A Pandoc filter to express diagrams inline using the Haskell EDSL _Diagrams_";
      description = "'diagrams-pandoc' replaces appropriately marked code\nblocks in pandoc input with images.  The code blocks are compiled\nusing the Haskell EDSL Diagrams.  Each block should define a\nDiagram named 'example', to be output.  This name and other\ndefaults can be overridden by command-line arguments to the\ndiagrams-pandoc program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.pandoc-types)
          (hsPkgs.diagrams-lib)
          (hsPkgs.linear)
          (hsPkgs.diagrams-builder)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      exes = {
        "diagrams-pandoc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.diagrams-lib)
            (hsPkgs.linear)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.diagrams-pandoc)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }