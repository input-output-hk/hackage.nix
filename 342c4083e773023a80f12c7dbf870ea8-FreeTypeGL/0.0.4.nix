{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use_font_config = false;
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "FreeTypeGL";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
        author = "Eyal Lotem <eyal.lotem@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Loadable texture fonts for OpenGL.";
        description = "Based on the freetype-gl library, with large\nmodifications.\n\nThis is similar to the FTGL (<http://hackage.haskell.org/package/FTGL>)\nlibrary, but avoids C++, which makes it easier to wrap and work with\nin Haskell-land.\n\nUnfortunately, it seems not to perform as well as\nFTGL on some setups.\n\nNOTE: Most of the demos and C-side documentation\nare out-of-date, as the C side was heavily\nmodified, without updating many of the demos or\nthe C documentation.";
        buildType = "Simple";
      };
      components = {
        "FreeTypeGL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.freetype2
            hsPkgs.OpenGL
          ];
          libs = pkgs.lib.optional _flags.use_font_config pkgs.fontconfig;
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        exes = {
          "hellobye" = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.FreeTypeGL
              hsPkgs.GLFW-b
              hsPkgs.OpenGL
            ];
          };
        };
      };
    }