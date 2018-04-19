{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "maccatcher";
          version = "0.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jason.dusek@gmail.com";
        author = "Jason Dusek";
        homepage = "";
        url = "";
        synopsis = "Obtain the host MAC address on *NIX and Windows.";
        description = "Obtain the host MAC address on *NIX and Windows.";
        buildType = "Simple";
      };
      components = {
        maccatcher = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.binary
            hsPkgs.process
            hsPkgs.parsec
          ];
        };
      };
    }