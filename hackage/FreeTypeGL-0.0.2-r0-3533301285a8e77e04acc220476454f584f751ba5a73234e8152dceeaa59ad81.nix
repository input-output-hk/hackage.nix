{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      use_font_config = false;
      examples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "FreeTypeGL";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
      author = "Eyal Lotem <eyal.lotem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Loadable texture fonts for OpenGL.";
      description = "Based on the freetype-gl library, with large\nmodifications.\n\nThis is similar to the FTGL (<http://hackage.haskell.org/package/FTGL>)\nlibrary, but avoids C++, which makes it easier to wrap and work with\nin Haskell-land.\n\nThis library is completely stand-alone (comes\nwith the required C sources), so you don't need\nto install any C library prior to installing\nthis. cabal intall FreeTypeGL should work fine.\n\nUnfortunately, it seems not to perform as well as\nFTGL on some setups.\n\nNOTE: Most of the demos and C-side documentation\nare out-of-date, as the C side was heavily\nmodified, without updating many of the demos or\nthe C documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.freetype2)
          (hsPkgs.OpenGL)
        ];
        libs = pkgs.lib.optional (flags.use_font_config) (pkgs."fontconfig");
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "hellobye" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.FreeTypeGL)
            (hsPkgs.GLFW-b)
            (hsPkgs.OpenGL)
          ];
        };
      };
    };
  }