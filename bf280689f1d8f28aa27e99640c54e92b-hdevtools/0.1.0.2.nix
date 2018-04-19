{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdevtools";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "See AUTHORS file";
        maintainer = "mutantlemon@gmail.com";
        author = "Bit Connor";
        homepage = "https://github.com/bitc/hdevtools/";
        url = "";
        synopsis = "Persistent GHC powered background server for FAST haskell development tools";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          hdevtools = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.ghc-syb-utils
              hsPkgs.syb
              hsPkgs.network
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }