{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gegl"; version = "0.0.0.3"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@nek0.eu";
      author = "nek0";
      homepage = "https://github.com/nek0/gegl#readme";
      url = "";
      synopsis = "Haskell bindings to GEGL library";
      description = "This package contains the Haskell bindings to the GEGL\nlibrary.\nThis library is still work in progress. This means that\neven minor version bumps may contain API breaking changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."babl" or ((hsPkgs.pkgs-errors).buildDepError "babl"))
          ];
        libs = [
          (pkgs."gegl-0.3" or ((hsPkgs.pkgs-errors).sysDepError "gegl-0.3"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gegl-0.3" or ((hsPkgs.pkgs-errors).pkgConfDepError "gegl-0.3"))
          ];
        buildable = true;
        };
      exes = {
        "example00" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gegl" or ((hsPkgs.pkgs-errors).buildDepError "gegl"))
            ];
          buildable = if flags.examples then true else false;
          };
        "example01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."gegl" or ((hsPkgs.pkgs-errors).buildDepError "gegl"))
            (hsPkgs."babl" or ((hsPkgs.pkgs-errors).buildDepError "babl"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            ];
          buildable = if flags.examples then true else false;
          };
        "example02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."gegl" or ((hsPkgs.pkgs-errors).buildDepError "gegl"))
            (hsPkgs."babl" or ((hsPkgs.pkgs-errors).buildDepError "babl"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }