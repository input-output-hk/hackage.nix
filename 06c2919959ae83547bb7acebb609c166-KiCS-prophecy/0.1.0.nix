{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "KiCS-prophecy";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Bernd Braßel";
        author = "Bernd Braßel";
        homepage = "http://curry-language.org";
        url = "";
        synopsis = "a transformation used by the kics debugger";
        description = "This package contains a transformation of the debugger\nfor the Curry to Haskell compiler \"kics\".";
        buildType = "Custom";
      };
      components = {
        "KiCS-prophecy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.KiCS
          ];
        };
        exes = {
          "prophecy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.KiCS
            ];
          };
        };
      };
    }