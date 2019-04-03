{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "pandoc-pyplot"; version = "2.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Laurent P. René de Cotret";
      author = "Laurent P. René de Cotret";
      homepage = "https://github.com/LaurentRDC/pandoc-pyplot#readme";
      url = "";
      synopsis = "A Pandoc filter for including figures generated from Matplotlib";
      description = "A pandoc filter for including figures generated from Matplotlib. Keep the document and Python code in the same location. Output from Matplotlib is captured and included as a figure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.typed-process)
          ];
        };
      exes = {
        "pandoc-pyplot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-pyplot)
            (hsPkgs.pandoc-types)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
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