{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-sf";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3-sf";
        url = "";
        synopsis = "Haskell SuperCollider SoundFile";
        description = "Trivial @NeXT@ sound file input and output.\nThe main module is \"Sound.File.NeXT\".\nFor almost all use cases please see Stefan\nKersten's @hsndfile@ package,\n<http://hackage.haskell.org/package/hsndfile>.";
        buildType = "Simple";
      };
      components = {
        hsc3-sf = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hosc
          ];
        };
      };
    }