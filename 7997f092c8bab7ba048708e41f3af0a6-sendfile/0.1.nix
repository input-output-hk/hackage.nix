{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sendfile";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matthew Elder <matt@mattelder.org>";
        author = "Matthew Elder <matt@mattelder.org>";
        homepage = "http://patch-tag.com/r/sendfile";
        url = "";
        synopsis = "A portable sendfile library";
        description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.";
        buildType = "Simple";
      };
      components = {
        sendfile = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
          ];
          libs = pkgs.lib.optionals (!_flags.portable && system.isWindows) [
            pkgs.kernel32
            pkgs.mswsock
          ];
        };
      };
    }