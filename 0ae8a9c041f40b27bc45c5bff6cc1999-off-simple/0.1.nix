{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "off-simple";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acfoltzer@gmail.com";
        author = "Adam C. Foltzer";
        homepage = "https://github.com/acfoltzer/off-simple";
        url = "";
        synopsis = "A parser for simplified-syntax OFF files";
        description = "A simple datatype and parser for 3D OFF files,\nloosely based on\n<http://people.sc.fsu.edu/~jburkardt/data/off/off.html>,\nbut uses the file header to determine whether the object's\nfaces contain color values.";
        buildType = "Simple";
      };
      components = {
        off-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec3
            hsPkgs.vector
          ];
        };
      };
    }