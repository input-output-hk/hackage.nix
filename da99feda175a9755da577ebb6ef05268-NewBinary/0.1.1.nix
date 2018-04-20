{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "NewBinary";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A binary I/O library";
        description = "An older binary serialization library used by a number of\nprojects. For new projects consider an alternative such as 'binary'.";
        buildType = "Simple";
      };
      components = {
        NewBinary = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }