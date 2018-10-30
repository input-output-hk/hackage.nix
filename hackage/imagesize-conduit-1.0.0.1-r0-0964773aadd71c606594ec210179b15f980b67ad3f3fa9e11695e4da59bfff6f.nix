{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "imagesize-conduit";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Determine the size of some common image formats.";
      description = "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.imagesize-conduit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }