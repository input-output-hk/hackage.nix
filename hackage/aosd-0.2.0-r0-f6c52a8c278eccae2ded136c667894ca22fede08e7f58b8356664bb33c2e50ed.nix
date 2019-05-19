{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debugmemory = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aosd"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anotheraddress@gmx.de";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Bindings to libaosd, a library for Cairo-based on-screen displays";
      description = "<http://www.atheme.org/project/libaosd>\n\n@An advanced on screen display (OSD) library, which uses Cairo to create high quality rendered graphics to be overlaid on top of the screen.@\n\nDistro packages providing /libaosd/:\n\n* /Debian/: @libaosd2@\n\nExample:\n\n@\n&#123;-\\# LANGUAGE OverloadedStrings \\#-&#125;\nimport \"Graphics.Aosd.Pango\"\n\nmarkup = pSized 50 (pUnlines [pItalic \\\"AOSD\\\",\\\"Example\\\"])\n\nmain = do\n\\    withAosd\n\\        defaultOpts\n\\        (textRenderer markup) &#123; alignment = Just AlignCenter, colour = orange &#125;\n\\        (\\a -> aosdFlash a (symDurations 3000 3000))\n@\n\nTested with /libaosd/ version 0.2.7.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.monad-control)
          (hsPkgs.colour)
          (hsPkgs.transformers)
          (hsPkgs.X11)
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.cairo)
          (hsPkgs.pango)
          ];
        pkgconfig = [ (pkgconfPkgs."libaosd") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      tests = {
        "test-aosd" = {
          depends = [
            (hsPkgs.colour)
            (hsPkgs.base)
            (hsPkgs.aosd)
            (hsPkgs.pango)
            (hsPkgs.language-haskell-extract)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }