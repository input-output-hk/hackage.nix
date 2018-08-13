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
        name = "hierarchical-clustering-diagrams";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "";
      url = "";
      synopsis = "Draw diagrams of dendrograms made by hierarchical-clustering.";
      description = "This package contains functions for drawing diagrams of\ndendrograms.  You may see a simple image sample at\n<https://github.com/meteficha/hierarchical-clustering-diagrams/blob/master/example.png>.\nSee the documentation at \"Diagrams.Dendrogram\" to see how to\nreproduce this diagram.";
      buildType = "Simple";
    };
    components = {
      "hierarchical-clustering-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.diagrams-lib)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hierarchical-clustering)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.hierarchical-clustering-diagrams)
          ];
        };
      };
    };
  }