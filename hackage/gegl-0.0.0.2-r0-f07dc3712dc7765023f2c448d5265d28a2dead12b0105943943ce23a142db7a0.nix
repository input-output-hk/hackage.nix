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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gegl"; version = "0.0.0.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
        ];
        libs = [ (pkgs."gegl-0.3" or (errorHandler.sysDepError "gegl-0.3")) ];
        pkgconfig = [
          (pkgconfPkgs."gegl-0.3" or (errorHandler.pkgConfDepError "gegl-0.3"))
        ];
        buildable = true;
      };
      exes = {
        "example00" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
          ];
          buildable = if flags.examples then true else false;
        };
        "example01" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
            (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
          buildable = if flags.examples then true else false;
        };
        "example02" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
            (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }