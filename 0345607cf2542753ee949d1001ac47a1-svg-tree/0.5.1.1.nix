{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "svg-tree";
          version = "0.5.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vincent Berthoux";
        author = "Vincent Berthoux";
        homepage = "";
        url = "";
        synopsis = "SVG file loader and serializer";
        description = "svg-tree provides types representing a SVG document,\nand allows to load and save it.\n\nThe types definition are aimed at rendering,\nso they are rather comple. For simpler SVG document building,\nlook after `lucid-svg`.\n\nTo render an svg document you can use the `rasterific-svg` package";
        buildType = "Simple";
      };
      components = {
        "svg-tree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.JuicyPixels
            hsPkgs.attoparsec
            hsPkgs.scientific
            hsPkgs.containers
            hsPkgs.xml
            hsPkgs.bytestring
            hsPkgs.linear
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.lens
          ];
        };
      };
    }