{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hly";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2010-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hly";
        url = "";
        synopsis = "Haskell LilyPond";
        description = "A very lightweight embedding of the lilypond\ntypesetting model in haskell";
        buildType = "Simple";
      };
      components = {
        hly = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hmt
            hsPkgs.process
          ];
        };
      };
    }