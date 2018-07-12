{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "polymap";
          version = "0.1.1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Copyright (C) 2015 David Farrell";
        maintainer = "David Farrell <shokku.ra@gmail.com>";
        author = "David Farrell";
        homepage = "";
        url = "";
        synopsis = "Polygonal maps";
        description = "Polygonal maps for Haskell with flexible storage.";
        buildType = "Simple";
      };
      components = {
        "polymap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          "example-basic" = {
            depends  = [
              hsPkgs.base
              hsPkgs.polymap
            ];
          };
        };
      };
    }