{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { debugmemory = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aosd"; version = "0.2.2"; };
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
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libaosd" or (errorHandler.pkgConfDepError "libaosd"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "test-aosd" = {
          depends = [
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aosd" or (errorHandler.buildDepError "aosd"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."language-haskell-extract" or (errorHandler.buildDepError "language-haskell-extract"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }