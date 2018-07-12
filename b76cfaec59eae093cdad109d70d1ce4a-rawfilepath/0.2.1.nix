{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rawfilepath";
          version = "0.2.1";
        };
        license = "Apache-2.0";
        copyright = "2016 XT";
        maintainer = "e@xtendo.org";
        author = "XT";
        homepage = "https://github.com/xtendo-org/rawfilepath#readme";
        url = "";
        synopsis = "Use RawFilePath instead of FilePath";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "rawfilepath" = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.unix
            hsPkgs.base
          ];
        };
        tests = {
          "RawFilePath-test" = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.rawfilepath
            ];
          };
        };
      };
    }