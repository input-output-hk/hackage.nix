{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "refh";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "i@raynes.me";
        author = "Anthony Grimes";
        homepage = "https://github.com/Raynes/refh";
        url = "";
        synopsis = "A command-line tool for pasting to https://www.refheap.com";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          refh = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskheap
              hsPkgs.clippard
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.network
            ];
          };
        };
      };
    }