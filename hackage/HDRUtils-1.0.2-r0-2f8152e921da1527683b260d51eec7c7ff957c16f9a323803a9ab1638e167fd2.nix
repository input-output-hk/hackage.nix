{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HDRUtils";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Jeff Heard";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "http://vis.renci.org/jeff/pfs";
      url = "";
      synopsis = "Utilities for reading, manipulating, and writing HDR images";
      description = "PFS is a library for manipulating Portable Floating-point Streams, an interchange\nformat for high-dynamic range images.  You will need pfstools for this library to work properly.\npfstools can be found at http://pfstools.sourceforge.net/";
      buildType = "Simple";
    };
    components = {
      "HDRUtils" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.colour)
          (hsPkgs.unix)
        ];
        libs = [ (pkgs."pfs-1.2") ];
      };
    };
  }