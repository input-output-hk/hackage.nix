{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "X11-xfixes";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "Aren Olson, 2011";
        maintainer = "Aren Olson <reacocard@gmail.com>";
        author = "";
        homepage = "https://github.com/reacocard/x11-xfixes";
        url = "";
        synopsis = "A binding to the Xfixes X11 extension library";
        description = "A Haskell binding to the Xfixes X11 extention graphics library.\n\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to man xfixes(3)";
        buildType = "Simple";
      };
      components = {
        X11-xfixes = {
          depends  = [
            hsPkgs.base
            hsPkgs.X11
          ];
          libs = [ pkgs.Xfixes ];
        };
      };
    }