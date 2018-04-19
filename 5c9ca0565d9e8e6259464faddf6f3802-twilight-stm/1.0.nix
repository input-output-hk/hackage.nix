{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.1";
        identifier = {
          name = "twilight-stm";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Annette Bieniusa";
        maintainer = "Annette Bieniusa";
        author = "";
        homepage = "http://proglang.informatik.uni-freiburg.de/projects/twilight/";
        url = "";
        synopsis = "Twilight STM library";
        description = "STM with safe irrevocable I/O and inconsistency repair";
        buildType = "Simple";
      };
      components = {
        twilight-stm = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.liboleg
            hsPkgs.containers
          ];
        };
      };
    }