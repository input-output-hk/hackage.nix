{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aosd";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anotheraddress@gmx.de";
        author = "Daniel Schüssler";
        homepage = "";
        url = "";
        synopsis = "Bindings to libaosd, a library for Cairo-based on-screen displays";
        description = "<http://www.atheme.org/project/libaosd>\n\n@An advanced on screen display (OSD) library, which uses Cairo to create high quality rendered graphics to be overlaid on top of the screen.@\n\nExample:\n\n@\n&#123;-\\# LANGUAGE OverloadedStrings \\#-&#125;\nimport \"Graphics.Aosd.Pango\"\n\nmarkup = pSized 50 (pUnlines [pItalic \\\"AOSD\\\",\\\"Example\\\"])\n\nmain = aosdFlash\n\\           defaultOpts\n\\           (textRenderer markup) &#123; alignment = Just AlignCenter, colour = orange &#125;\n\\           (symDurations 3000 3000)\n@";
        buildType = "Simple";
      };
      components = {
        aosd = {
          depends  = [
            hsPkgs.colour
            hsPkgs.transformers
            hsPkgs.X11
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.cairo
            hsPkgs.pango
          ];
        };
        tests = {
          test-aosd = {
            depends  = [
              hsPkgs.colour
              hsPkgs.base
              hsPkgs.aosd
              hsPkgs.pango
              hsPkgs.language-haskell-extract
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }