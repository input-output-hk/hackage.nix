{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      example = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ansi-terminal-game";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "© 2017-2018 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "none-yet";
      url = "";
      synopsis = "sdl-like functions for terminal applications, based on\nansi-terminal";
      description = "Library which aims to replicate standard 2d game\nfunctions (blit, ticks, timers, etc.) in a terminal\nsetting.\nAims to be cross compatible (based on \"ansi-terminal\",\nno unix-only dependencies), practical.\nThis is a proof of concept release, used to implement\n@http://www.ariis.it/static/articles/animascii/page.html@\n. See example folder for some minimal programs.";
      buildType = "Simple";
    };
    components = {
      "ansi-terminal-game" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.timers-tick)
          (hsPkgs.split)
          (hsPkgs.ansi-terminal)
          (hsPkgs.terminal-size)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.linebreak)
          (hsPkgs.split)
        ];
      };
      exes = {
        "alone-in-a-room" = {
          depends  = pkgs.lib.optionals (_flags.example) [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal-game)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.linebreak)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }