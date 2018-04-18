{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "helf";
          version = "0.2016.12.25";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
        author = "Andreas Abel and Nicolai Kraus";
        homepage = "http://www2.tcs.ifi.lmu.de/~abel/projects.html#helf";
        url = "";
        synopsis = "Typechecking terms of the Edinburgh Logical Framework (LF).";
        description = "HELF = Haskell implementation of the Edinburgh Logical Framework\n\nHELF implements only a subset of the Twelf syntax and functionality.\nIt type-checks LF definitions, but does not do type reconstruction.";
        buildType = "Simple";
      };
      components = {
        exes = {
          helf = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }