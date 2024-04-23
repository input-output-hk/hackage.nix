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
    flags = { use_font_config = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "FreeTypeGL"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
      author = "Eyal Lotem <eyal.lotem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell fonts with OpenGL";
      description = "Based on the freetype-gl library, with large\nmodifications.\nThis is similar to the FTGL library, but avoids\nC++, which makes it easier to wrap and work with\nin Haskell-land.\nThis library is completely stand-alone (comes\nwith the required C sources), so you don't need\nto install any C library prior to installing\nthis. cabal intall FreeTypeGL should work fine.\nUnfortunately, it seems not to perform as well as\nFTGL on some setups.\nNOTE: Most of the demos and C-side documentation\nare out-of-date, as the C side was heavily\nmodified, without updating many of the demos or\nthe C documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
        ];
        libs = pkgs.lib.optional (flags.use_font_config) (pkgs."fontconfig" or (errorHandler.sysDepError "fontconfig"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "hellobye" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."FreeTypeGL" or (errorHandler.buildDepError "FreeTypeGL"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }