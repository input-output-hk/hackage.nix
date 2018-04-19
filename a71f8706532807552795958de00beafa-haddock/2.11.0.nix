{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      in-ghc-tree = false;
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haddock";
          version = "2.11.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Simon Marlow, David Waern";
        maintainer = "David Waern <david.waern@gmail.com>";
        author = "Simon Marlow, David Waern";
        homepage = "http://www.haskell.org/haddock/";
        url = "";
        synopsis = "A documentation-generation tool for Haskell libraries";
        description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
        buildType = "Simple";
      };
      components = {
        haddock = {
          depends  = ([
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.xhtml
            hsPkgs.Cabal
            hsPkgs.ghc
          ] ++ pkgs.lib.optional (!_flags.in-ghc-tree) hsPkgs.ghc-paths) ++ pkgs.lib.optional _flags.test hsPkgs.QuickCheck;
        };
        exes = {
          haddock = {
            depends  = ([
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.xhtml
              hsPkgs.Cabal
              hsPkgs.ghc
            ] ++ pkgs.lib.optional (!_flags.in-ghc-tree) hsPkgs.ghc-paths) ++ pkgs.lib.optional _flags.test hsPkgs.QuickCheck;
          };
        };
        tests = {
          html-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.Cabal
            ];
          };
        };
      };
    }