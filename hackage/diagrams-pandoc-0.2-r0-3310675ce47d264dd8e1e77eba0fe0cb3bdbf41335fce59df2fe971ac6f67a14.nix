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
      specVersion = "1.10";
      identifier = {
        name = "diagrams-pandoc";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Daniel Bergey";
      homepage = "";
      url = "";
      synopsis = "A pandoc filter to express diagrams inline using the haskell EDSL _diagrams_";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          depends  = [
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