{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libpafe";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "haru2036@gmail.com";
        author = "haru2036";
        homepage = "";
        url = "";
        synopsis = "Wrapper for libpafe";
        description = "Wrapper for Pasori library libpafe";
        buildType = "Simple";
      };
      components = {
        libpafe = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.pafe ];
        };
        tests = {
          test-read = {
            depends  = [
              hsPkgs.base
              hsPkgs.libpafe
              hsPkgs.bytestring
              hsPkgs.iconv
            ];
          };
          test-read-fcf = {
            depends  = [
              hsPkgs.base
              hsPkgs.libpafe
              hsPkgs.bytestring
              hsPkgs.iconv
            ];
          };
        };
      };
    }