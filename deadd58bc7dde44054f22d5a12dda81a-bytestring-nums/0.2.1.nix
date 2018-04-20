{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring-nums";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jason.dusek@gmail.com";
        author = "Jason Dusek";
        homepage = "http://github.com/jsnx/bytestring-nums";
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
      };
    }