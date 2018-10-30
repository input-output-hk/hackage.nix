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
      specVersion = "1.18";
      identifier = {
        name = "diagrams-rasterific";
        version = "1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Jeffrey Rosenbluth";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Rasterific backend for diagrams.";
      description = "A full-featured backend for rendering\ndiagrams using the Rasterific rendering engine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.hashable)
          (hsPkgs.Rasterific)
          (hsPkgs.FontyFruity)
          (hsPkgs.JuicyPixels)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.data-default-class)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.optparse-applicative)
          (hsPkgs.bytestring)
          (hsPkgs.file-embed)
        ];
      };
      tests = {
        "test0" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
          ];
        };
        "test1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
          ];
        };
      };
    };
  }