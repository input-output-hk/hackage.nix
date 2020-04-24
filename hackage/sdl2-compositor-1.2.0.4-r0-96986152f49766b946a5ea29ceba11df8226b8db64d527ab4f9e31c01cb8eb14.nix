{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-compositor"; version = "1.2.0.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2015  Sebastian Jordan";
      maintainer = "sebastian.jordan.mail@googlemail.com";
      author = "Sebastian Jordan";
      homepage = "";
      url = "";
      synopsis = "image compositing with sdl2 - declarative style";
      description = "This package provides tools for simple image composition\nthrough the means of the SDL library, version 2.  You can\ncombine, translate, rotate, blend, modulate colors and\ndraw in a declarative way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."lrucache" or ((hsPkgs.pkgs-errors).buildDepError "lrucache"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          ];
        buildable = true;
        };
      exes = {
        "sdl2-comp-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."lrucache" or ((hsPkgs.pkgs-errors).buildDepError "lrucache"))
            (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "sdl2-comp-res-independent" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."lrucache" or ((hsPkgs.pkgs-errors).buildDepError "lrucache"))
            (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }