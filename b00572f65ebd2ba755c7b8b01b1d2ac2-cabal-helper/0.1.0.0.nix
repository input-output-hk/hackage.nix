{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-helper";
          version = "0.1.0.0";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "dxld@darkboxed.org";
        author = "Daniel Gröber <dxld@darkboxed.org>";
        homepage = "";
        url = "";
        synopsis = "Simple interface to Cabal's configuration state used by ghc-mod";
        description = "@cabal-helper@ provides a library which wraps the internal use of executables\nto lift the restrictions imposed by linking against versions of GHC before\n@7.10@.\n@cabal-helper@ uses a wrapper executable to compile the actual cabal-helper\nexecutable at runtime while linking against an arbitrary version of\nCabal. This runtime-compiled helper executable is then used to extract\nvarious bits and peices from Cabal on disk state (dist/setup-config) written\nby it's configure command.\nIn addition to this the wrapper executable also supports installing any\nversion of Cabal from hackage in case it cannot be found in any available\npackage database. The wrapper installs these instances of the Cabal library\ninto a private package database so as to not interfere with the user's\npackages.\nFurthermore the wrapper supports one special case namely reading a state\nfile for Cabal itself. This is needed as Cabal compiles it's Setup.hs using\nitself and not using any version of Cabal installed in any package database.\nCurrently @cabal-helper@ supports @Cabal >= 1.16@.";
        buildType = "Simple";
      };
      components = {
        "cabal-helper" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.process
          ];
        };
        exes = {
          "cabal-helper-wrapper" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.temporary
            ];
          };
        };
      };
    }