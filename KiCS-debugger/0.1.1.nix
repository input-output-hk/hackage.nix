{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "KiCS-debugger";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Bernd Braßel";
        author = "Bernd Braßel";
        homepage = "http://curry-language.org";
        url = "";
        synopsis = "debug features for kics";
        description = "This package contains the debugger for the Curry to Haskell compiler \"kics\".";
        buildType = "Custom";
      };
      components = {
        KiCS-debugger = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.filepath
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.readline
            hsPkgs.KiCS
          ];
        };
        exes = {
          mkstrict = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src
              hsPkgs.directory
              hsPkgs.curry-base
              hsPkgs.KiCS
              hsPkgs.KiCS-prophecy
            ];
          };
        };
      };
    }