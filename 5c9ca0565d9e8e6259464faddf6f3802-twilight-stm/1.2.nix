{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "twilight-stm";
          version = "1.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "Annette Bieniusa";
        maintainer = "Annette Bieniusa <bieniusa@informatik.uni-freiburg.de>";
        author = "";
        homepage = "http://proglang.informatik.uni-freiburg.de/projects/twilight/";
        url = "";
        synopsis = "STM library with safe irrevocable I/O and inconsistency repair";
        description = "A STM library with safe irrevocable I/O and inconsistency repair";
        buildType = "Simple";
      };
      components = {
        twilight-stm = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }