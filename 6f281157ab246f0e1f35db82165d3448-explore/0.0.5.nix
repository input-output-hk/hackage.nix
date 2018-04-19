{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "explore";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009, Cetin Sert";
        maintainer = "Cetin Sert <cetin@sertcom.de>";
        author = "An Le Thi Thanh, Cetin Sert";
        homepage = "http://sert.homedns.org/hs/explore/";
        url = "";
        synopsis = "Experimental Plot data Reconstructor";
        description = "Very first prototype of a command line tool to\nextract pixel positions matching a given colour\nto help reconstruct plot data. See example.ods\nand Main.hs to figure out its usage.";
        buildType = "Simple";
      };
      components = {
        exes = {
          explore = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.pngload
            ];
          };
        };
      };
    }