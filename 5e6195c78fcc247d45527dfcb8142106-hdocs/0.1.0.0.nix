{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdocs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voidex@live.com";
        author = "Alexandr `Voidex` Ruchkin";
        homepage = "https://github.com/mvoidex/hdocs";
        url = "";
        synopsis = "Haskell docs daemon";
        description = "Tool and library to get docs for installed packages and source files.\nCan return result in JSON format.\n\n@Usage:\nhdocs docs <module> - get docs for module/file\nhdocs docs <module> <name> - get docs for name in module/file\nflags\n-j          --json         output json\n-g GHC_OPT  --ghc=GHC_OPT  option to pass to GHC\n@";
        buildType = "Simple";
      };
      components = {
        hdocs = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.haddock
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.network
            hsPkgs.process
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
        exes = {
          hdocs = {
            depends  = [
              hsPkgs.base
              hsPkgs.hdocs
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.network
              hsPkgs.text
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hdocs
              hsPkgs.containers
            ];
          };
        };
      };
    }