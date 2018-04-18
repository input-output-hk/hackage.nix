{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      cli = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "maccatcher";
          version = "2.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@solidsnack.be";
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
            hsPkgs.binary
            hsPkgs.process
            hsPkgs.parsec
          ];
        };
        exes = { maccatcher = {}; };
      };
    }