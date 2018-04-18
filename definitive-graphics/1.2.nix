{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "definitive-graphics";
          version = "1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "marc.coiffier@gmail.com";
        author = "Marc Coiffier";
        homepage = "http://coiffier.net/projects/definitive-framework.html";
        url = "";
        synopsis = "A definitive package allowing you to open windows, read image files and render text to be displayed or saved";
        description = "";
        buildType = "Simple";
      };
      components = {
        definitive-graphics = {
          depends  = [
            hsPkgs.base
            hsPkgs.definitive-base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.definitive-reactive
            hsPkgs.clock
            hsPkgs.definitive-parser
            hsPkgs.cpu
            hsPkgs.utf8-string
            hsPkgs.JuicyPixels
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.zlib
            hsPkgs.stb-truetype
            hsPkgs.GLFW
          ];
        };
      };
    }