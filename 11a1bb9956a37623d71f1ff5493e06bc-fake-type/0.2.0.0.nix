{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fake-type";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/fake-type";
        url = "";
        synopsis = "A crossplatform library to simulate keyboard input";
        description = "A crossplatform library to simulate keyboard input (so far it works only on Linux, but I'll add Windows and OS X soon).";
        buildType = "Simple";
      };
      components = {
        "fake-type" = {
          depends  = [
            hsPkgs.X11
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.split
          ];
          libs = [ pkgs.Xtst ];
        };
      };
    }