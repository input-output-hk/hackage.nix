{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsdif";
          version = "0.11";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hsdif";
        url = "";
        synopsis = "Haskell SDIF";
        description = "hsdif provides Sound.SDIF, a haskell\nmodule implementing a subset of Sound Description\nInterchange Format.";
        buildType = "Simple";
      };
      components = {
        hsdif = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hosc
          ];
        };
      };
    }