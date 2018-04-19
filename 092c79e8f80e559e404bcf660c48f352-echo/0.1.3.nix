{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "echo";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2016-2017 Ryan Scott";
        maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
        author = "Ryan Scott";
        homepage = "https://github.com/RyanGlScott/echo";
        url = "";
        synopsis = "A cross-platform, cross-console way to handle echoing terminal input";
        description = "The @base@ library exposes the @hGetEcho@ and @hSetEcho@ functions\nfor querying and setting echo status, but unfortunately, neither\nfunction works with MinTTY consoles on Windows. This is a serious\nissue, since @hGetEcho@ and @hSetEcho@ are often used to disable\ninput echoing when a program prompts for a password, so many\nprograms will reveal your password as you type it on MinTTY!\n\nThis library provides an alternative interface which works\nwith both MinTTY and other consoles. An example is included\nwhich demonstrates how one might prompt for a password using\nthis library. To build it, make sure to configure with the\n@-fexample@ flag.";
        buildType = "Simple";
      };
      components = {
        echo = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ] ++ optionals system.isWindows [
            hsPkgs.mintty
            hsPkgs.Win32
          ];
        };
        exes = {
          password = {
            depends  = [
              hsPkgs.base
              hsPkgs.echo
            ];
          };
        };
      };
    }