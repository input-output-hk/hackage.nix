{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HOpenCV";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Noam Lewis <jones.noamle@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A binding for the OpenCV computer vision library";
        description = "Initial version with very limited bindings to OpenCV 2.0. (See: <http://opencv.willowgarage.com/wiki/Welcome>)\n\nFor a functional interface to this library, see the package @cv-combinators@.\n\nInstallation\n\nYou must install OpenCV (development packages) prior to installing this package. Currently only tested on Ubuntu Linux, but should work on most linux distributions. For OpenCV installation on other *nix platforms, see <http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.0/>\n\nOn ubuntu systems, the appropriate version of OpenCV can be installed by:\n\n> sudo add-apt-repository ppa:gijzelaar/opencv2-karmick\n> sudo apt-get update\n> sudo apt-get install libcv-dev libhighgui-dev\n\nYou should then have libcv4 and libhighgui4 installed automatically too.\n";
        buildType = "Simple";
      };
      components = {
        HOpenCV = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.cv pkgs.highgui ];
        };
        exes = {
          test-hopencv = {
            depends  = [ hsPkgs.base ];
            libs = [ pkgs.cv pkgs.highgui ];
          };
        };
      };
    }