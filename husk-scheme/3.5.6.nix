{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      useffi = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "husk-scheme";
          version = "3.5.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Justin Ethier <github.com/justinethier>";
        author = "Justin Ethier";
        homepage = "http://justinethier.github.com/husk-scheme";
        url = "";
        synopsis = "R5RS Scheme interpreter, compiler, and library.";
        description = "A dialect of R5RS Scheme written in Haskell. Provides advanced\nfeatures including continuations, hygienic macros, a Haskell FFI,\nand the full numeric tower.";
        buildType = "Simple";
      };
      components = {
        husk-scheme = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.ghc-paths
          ] ++ pkgs.lib.optional _flags.useffi hsPkgs.ghc;
        };
        exes = {
          huski = {
            depends  = [
              hsPkgs.husk-scheme
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.ghc-paths
            ] ++ pkgs.lib.optional _flags.useffi hsPkgs.ghc;
          };
          huskc = {
            depends  = [
              hsPkgs.husk-scheme
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.ghc-paths
              hsPkgs.process
              hsPkgs.filepath
            ] ++ pkgs.lib.optional _flags.useffi hsPkgs.ghc;
          };
        };
      };
    }