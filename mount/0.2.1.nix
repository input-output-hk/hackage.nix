{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mount";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "tensor5@gmail.com";
        author = "Nicola Squartini";
        homepage = "";
        url = "";
        synopsis = "Mounts and umounts filesystems";
        description = "This package is obsolete. Use <http://hackage.haskell.org/package/linux-mount> instead.";
        buildType = "Simple";
      };
      components = {
        mount = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }