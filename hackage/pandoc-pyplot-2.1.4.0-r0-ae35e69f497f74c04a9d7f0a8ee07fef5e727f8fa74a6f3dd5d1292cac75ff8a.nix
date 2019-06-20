{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "pandoc-pyplot"; version = "2.1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Laurent P. René de Cotret";
      author = "Laurent P. René de Cotret";
      homepage = "https://github.com/LaurentRDC/pandoc-pyplot#readme";
      url = "";
      synopsis = "A Pandoc filter to include figures generated from Python code blocks";
      description = "A Pandoc filter to include figures generated from Python code blocks. Keep the document and Python code in the same location. Output from Matplotlib is captured and included as a figure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.data-default-class)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.typed-process)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "pandoc-pyplot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.open-browser)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-pyplot)
            (hsPkgs.pandoc-types)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.data-default-class)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-pyplot)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hspec)
            (hsPkgs.temporary)
            (hsPkgs.text)
            ];
          };
        };
      };
    }