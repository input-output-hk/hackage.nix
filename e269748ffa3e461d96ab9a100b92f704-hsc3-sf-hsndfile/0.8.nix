{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsc3-sf-hsndfile";
          version = "0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2010";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hsc3-sf-hsndfile";
        url = "";
        synopsis = "Haskell SuperCollider SoundFile";
        description = "Provide hsc3-sf interface to Stefan\nKersten's hsndfile package.";
        buildType = "Simple";
      };
      components = {
        hsc3-sf-hsndfile = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.hsc3-sf
            hsPkgs.hsndfile
            hsPkgs.hsndfile-vector
            hsPkgs.vector
          ];
        };
      };
    }