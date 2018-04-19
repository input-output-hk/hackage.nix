{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fsutils";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "i@raynes.me";
        author = "Anthony Grimes";
        homepage = "https://github.com/Raynes/fsutils";
        url = "";
        synopsis = "File system utilities for Haskell that are missing from built in libraries.";
        description = "";
        buildType = "Simple";
      };
      components = {
        fsutils = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
      };
    }