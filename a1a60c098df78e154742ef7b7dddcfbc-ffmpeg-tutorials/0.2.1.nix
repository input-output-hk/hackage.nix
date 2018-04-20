{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ffmpeg-tutorials";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Vasyl Pasternak";
        maintainer = "vasyl.pasternak@gmail.com";
        author = "Vasyl Pasternak";
        homepage = "";
        url = "";
        synopsis = "Tutorials on ffmpeg usage to play video/audio";
        description = "A set of tutorials with raising complexity";
        buildType = "Simple";
      };
      components = {
        exes = {
          tutorial01 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.hs-ffmpeg
            ];
          };
          tutorial02 = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.SDL
              hsPkgs.hs-ffmpeg
            ];
          };
        };
      };
    }