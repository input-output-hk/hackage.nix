{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "not-gloss";
          version = "0.7.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Greg Horn 2012-2014";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "Painless 3D graphics, no affiliation with gloss";
        description = "This package intends to make it relatively easy to do simple 3d graphics using high-level primitives.\nIt is inspired by gloss and attempts to emulate it.\nThis is an early release and the api will certainly change.\nNote that transparency can be controlled by the alpha value: \"makeColor r g b alpha\" but that you must draw objects from back to front for transparency to properly work (just put clear things last).\nAlso, transparent ellipsoids and cylinders have ugly artifacts, sorry.\nLook at the complimentary package not-gloss-examples to get started.";
        buildType = "Simple";
      };
      components = {
        "not-gloss" = {
          depends  = [
            hsPkgs.base
            hsPkgs.GLUT
            hsPkgs.time
            hsPkgs.OpenGLRaw
            hsPkgs.spatial-math
            hsPkgs.cereal
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.bmp
          ];
        };
      };
    }