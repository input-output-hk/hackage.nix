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
      specVersion = "1.6";
      identifier = {
        name = "ffmpeg-tutorials";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Vasyl Pasternak";
      maintainer = "vasylpasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "http://patch-tag.com/r/VasylPasternak/ffmpeg-tutorials";
      url = "";
      synopsis = "Tutorials on ffmpeg usage to play video/audio";
      description = "A set of tutorials with raising complexity";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tutorial01" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.hs-ffmpeg)
          ];
        };
        "tutorial02" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.SDL)
            (hsPkgs.hs-ffmpeg)
          ];
        };
        "tutorial03" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.SDL)
            (hsPkgs.hs-ffmpeg)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }