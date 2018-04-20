{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "freenect";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/freenect";
        url = "";
        synopsis = "Interface to the Kinect device.";
        description = "Interface to the Kinect device. Currently supports\ndepth perception. (No video or audio.)";
        buildType = "Simple";
      };
      components = {
        freenect = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
          libs = [
            pkgs.freenect
            pkgs.freenect_sync
          ];
        };
      };
    }