{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "herringbone";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "harry@garrood.me";
        author = "Harry Garrood";
        homepage = "";
        url = "";
        synopsis = "A library for compiling and serving static web assets.";
        description = "A library for compiling and serving static web assets. For more information, please see <https://github.com/hdgarrood/herringbone>.";
        buildType = "Simple";
      };
      components = {
        "herringbone" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.directory
            hsPkgs.unix-compat
            hsPkgs.http-types
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
        tests = {
          "herringbone-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai
              hsPkgs.wai-app-static
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.directory
              hsPkgs.unix-compat
              hsPkgs.http-types
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.warp
            ];
          };
        };
      };
    }