{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      standalone = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-ghc";
          version = "0.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright © 2012-2014 University of Twente";
        maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
        author = "Christiaan Baaij";
        homepage = "http://christiaanb.github.io/clash2";
        url = "";
        synopsis = "CAES Language for Synchronous Hardware";
        description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modeled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* CλaSH Compiler binary using GHC/Haskell as a frontend\n\n\nPrelude library: http://hackage.haskell.org/package/clash-prelude";
        buildType = "Simple";
      };
      components = {
        exes = {
          "clash" = {
            depends  = ([
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.clash-lib
              hsPkgs.clash-prelude
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.process
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unbound
              hsPkgs.unordered-containers
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.unix
              ])) ++ pkgs.lib.optional (!_flags.standalone) hsPkgs.ghc-paths;
          };
        };
      };
    }