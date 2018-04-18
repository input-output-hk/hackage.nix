{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dictionary-sharing";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonas.duregard@chalmers.se";
        author = "Jonas Duregård";
        homepage = "";
        url = "";
        synopsis = "Sharing/memoization of class members";
        description = "Library for ensuring that class members are shared.";
        buildType = "Simple";
      };
      components = {
        dictionary-sharing = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }