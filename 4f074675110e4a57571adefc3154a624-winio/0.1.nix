{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "winio";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2007-2009 Felix Martini";
        maintainer = "felix@felixmartini.com";
        author = "";
        homepage = "http://github.com/felixmar/winio";
        url = "";
        synopsis = "I/O library for Windows";
        description = "I/O library for Windows with I/O completion port support.";
        buildType = "Simple";
      };
      components = {
        winio = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.extensible-exceptions
            hsPkgs.network
            hsPkgs.winerror
          ];
          libs = [
            pkgs.kernel32
            pkgs.ws2_32
          ];
        };
      };
    }