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
      specVersion = "1.12";
      identifier = {
        name = "pandoc-pyplot";
        version = "1.0.0.1";
      };
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
          (hsPkgs.pandoc-types)
          (hsPkgs.temporary)
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
    };
  }