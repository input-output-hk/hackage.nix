{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "herbalizer";
          version = "0.4.8";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/herbalizer";
        url = "";
        synopsis = "HAML to ERB translator";
        description = "HAML to ERB translator";
        buildType = "Simple";
      };
      components = {
        exes = {
          herbalizer = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.parsec
              hsPkgs.indents
              hsPkgs.containers
              hsPkgs.regex-posix
              hsPkgs.mtl
            ];
          };
        };
      };
    }