{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "ghci-ng";
          version = "7.6.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "© 2005 The University of Glasgow";
        maintainer = "hvr@gnu.org";
        author = "The GHC Team";
        homepage = "https://github.com/hvr/ghci-ng";
        url = "";
        synopsis = "Extended GHCi fork";
        description = "This provides an augmented version of @ghci-7.6.3@ installed under\nthe name @ghci-ng@ containing backported, proposed and\nexperimental features.\n\nCurrently, @ghci-ng@ has the following additional features\ncompared to the vanilla @ghci-7.6.3@ program:\n\n* backported @:complete@ command for non-interactive completion\n(see <http://ghc.haskell.org/trac/ghc/ticket/5687 GHC#5687>)\n\n* backported customizable continuation prompt (@:set prompt2@)\nand bugfix for `:set +m`-style completion\n(see <http://ghc.haskell.org/trac/ghc/ticket/8076 GHC#8076>)\n\n* Support for @%l@ line-number prompt substitution\n(proposed for GHC 7.8, <http://ghc.haskell.org/trac/ghc/ticket/8047 GHC#8047>)\n\n* Add `:show linker` command to `:help` output\n(<http://ghc.haskell.org/trac/ghc/ticket/8074 GHC#8074>)\n\n* Add missing `:show imports` to completion table\n(<http://ghc.haskell.org/trac/ghc/ticket/8075 GHC#7075>)";
        buildType = "Simple";
      };
      components = {
        exes = {
          ghci-ng = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.haskeline
              hsPkgs.process
              hsPkgs.transformers
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }