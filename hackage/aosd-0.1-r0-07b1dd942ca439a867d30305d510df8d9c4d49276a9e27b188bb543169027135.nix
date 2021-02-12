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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aosd"; version = "0.1"; };
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
      "library" = {
        depends = [
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
          (pkgconfPkgs."libaosd-text" or (errorHandler.pkgConfDepError "libaosd-text"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
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