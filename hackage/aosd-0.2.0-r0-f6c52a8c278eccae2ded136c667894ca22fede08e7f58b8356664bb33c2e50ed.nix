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
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."pango" or ((hsPkgs.pkgs-errors).buildDepError "pango"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libaosd" or ((hsPkgs.pkgs-errors).pkgConfDepError "libaosd"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test-aosd" = {
          depends = [
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aosd" or ((hsPkgs.pkgs-errors).buildDepError "aosd"))
            (hsPkgs."pango" or ((hsPkgs.pkgs-errors).buildDepError "pango"))
            (hsPkgs."language-haskell-extract" or ((hsPkgs.pkgs-errors).buildDepError "language-haskell-extract"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }