{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hpc";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Code Coverage Library for Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        hpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.containers
          ];
        };
      };
    }