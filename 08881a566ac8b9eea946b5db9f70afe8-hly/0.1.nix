{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hly";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2010-2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hly";
        url = "";
        synopsis = "Haskell LilyPond";
        description = "A very lightweight embedding of the lilypond\ntypesetting model in haskell";
        buildType = "Simple";
      };
      components = {
        "hly" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmt
          ];
        };
      };
    }