{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "filepath-io-access";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "bheklilr2@gmail.com";
        author = "Aaron Stevens";
        homepage = "";
        url = "";
        synopsis = "IO Access for filepath";
        description = "";
        buildType = "Simple";
      };
      components = {
        filepath-io-access = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.base-io-access
          ];
        };
      };
    }