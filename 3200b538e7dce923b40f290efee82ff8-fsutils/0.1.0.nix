{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fsutils";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "i@raynes.me";
        author = "Anthony Grimes";
        homepage = "https://github.com/Raynes/fsutils";
        url = "";
        synopsis = "File system utilities for Haskell that are missing from built in libraries.";
        description = "A collection of file system utilities such as recursive\ndirectory walks and listings.";
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