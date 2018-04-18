{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SDL";
          version = "0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2010, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libSDL";
        description = "Simple DirectMedia Layer \\(libSDL\\) is a cross-platform multimedia\nlibrary designed to provide low level access to audio,\nkeyboard, mouse, joystick, 3D hardware via OpenGL, and 2D\nvideo framebuffer. It is used by MPEG playback software,\nemulators, and many popular games, including the award\nwinning Linux port of \\\"Civilization: Call To Power.\\\"";
        buildType = "Custom";
      };
      components = {
        SDL = {
          depends  = [ hsPkgs.base ];
          libs = pkgs.lib.optional (!system.isOsx) pkgs.SDL;
          frameworks = [ pkgs.AppKit ];
        };
      };
    }