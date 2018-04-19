{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      docs = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsdev";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voidex@live.com";
        author = "Alexandr `Voidex` Ruchkin";
        homepage = "https://github.com/mvoidex/hsdev";
        url = "";
        synopsis = "Haskell development library";
        description = "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references, hayoo search etc.";
        buildType = "Simple";
      };
      components = {
        hsdev = {
          depends  = (((([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.array
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.cpphs
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.ghc-paths
            hsPkgs.ghc-syb-utils
            hsPkgs.haskell-names
            hsPkgs.haskell-src-exts
            hsPkgs.hformat
            hsPkgs.hlint
            hsPkgs.HTTP
            hsPkgs.lens
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-loops
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.regex-pcre-builtin
            hsPkgs.scientific
            hsPkgs.simple-log
            hsPkgs.stm
            hsPkgs.direct-sqlite
            hsPkgs.sqlite-simple
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-region
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.uniplate
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
            ])) ++ pkgs.lib.optionals (compiler.isGhc && compiler.isGhc) ([
            hsPkgs.ghc
            hsPkgs.ghc-boot
            hsPkgs.directory
          ] ++ pkgs.lib.optional _flags.docs hsPkgs.haddock-api)) ++ pkgs.lib.optionals (compiler.isGhc && compiler.isGhc) ([
            hsPkgs.ghc
            hsPkgs.ghc-boot
            hsPkgs.directory
          ] ++ pkgs.lib.optional _flags.docs hsPkgs.haddock-api)) ++ pkgs.lib.optionals compiler.isGhc ([
            hsPkgs.ghc
            hsPkgs.bin-package-db
            hsPkgs.directory
          ] ++ pkgs.lib.optional _flags.docs hsPkgs.haddock-api)) ++ pkgs.lib.optional _flags.docs hsPkgs.hdocs;
        };
        exes = {
          hsdev = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.monad-loops
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.aeson
              hsPkgs.aeson-lens
              hsPkgs.async
              hsPkgs.data-default
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.hformat
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.text
            ];
          };
        };
      };
    }