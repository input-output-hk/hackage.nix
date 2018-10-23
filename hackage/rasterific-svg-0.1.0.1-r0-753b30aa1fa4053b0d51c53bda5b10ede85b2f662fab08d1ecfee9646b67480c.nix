{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rasterific-svg";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "SVG renderer based on Rasterific.";
      description = "SVG renderer that will let you render svg-tree parsed\nSVG file to a JuicyPixel image or Rasterific Drawing.";
      buildType = "Simple";
    };
    components = {
      "rasterific-svg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.binary)
          (hsPkgs.scientific)
          (hsPkgs.JuicyPixels)
          (hsPkgs.containers)
          (hsPkgs.Rasterific)
          (hsPkgs.FontyFruity)
          (hsPkgs.svg-tree)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.lens)
        ];
      };
      exes = {
        "svgrender" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.rasterific-svg)
            (hsPkgs.Rasterific)
            (hsPkgs.JuicyPixels)
            (hsPkgs.filepath)
            (hsPkgs.FontyFruity)
            (hsPkgs.svg-tree)
          ];
        };
      };
      tests = {
        "svgtest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.rasterific-svg)
            (hsPkgs.Rasterific)
            (hsPkgs.JuicyPixels)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.FontyFruity)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.svg-tree)
            (hsPkgs.blaze-html)
          ];
        };
      };
    };
  }