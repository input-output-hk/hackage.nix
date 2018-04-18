{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cli = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bytestring-nums";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jason.dusek@gmail.com";
        author = "Jason Dusek";
        homepage = "http://github.com/solidsnack/bytestring-nums";
        url = "";
        synopsis = "Parse numeric literals from ByteStrings.";
        description = "Parse numeric literals from ByteStrings.";
        buildType = "Simple";
      };
      components = {
        bytestring-nums = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
          ];
        };
        exes = { spoj-eugene = {}; };
      };
    }