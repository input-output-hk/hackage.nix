{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tfrandom = true;
      ghcapi = true;
      readfile = true;
      debug = false;
      networkuri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "MagicHaskeller";
          version = "0.9.6.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
        author = "Susumu Katayama";
        homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
        url = "";
        synopsis = "Automatic inductive functional programmer by systematic search";
        description = "MagicHaskeller is an inductive functional programming system for Haskell.\nThis package contains the MagicHaskeller library, which can be used within GHCi or as an API for inductive program synthesis.\nIt also contains the MagicHaskeller executable that is a standalone synthesis program which can be used interactively or as a backend server,\nand the MagicHaskeller.cgi executable that is a CGI frontend for providing the Web interface.";
        buildType = "Simple";
      };
      components = {
        "MagicHaskeller" = {
          depends  = ((([
            hsPkgs.time
            hsPkgs.template-haskell
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.random
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.html
            hsPkgs.pretty
            hsPkgs.hashable
          ] ++ pkgs.lib.optional _flags.tfrandom hsPkgs.tf-random) ++ pkgs.lib.optionals (_flags.ghcapi && !system.isWindows) [
            hsPkgs.ghc
            hsPkgs.ghc-paths
          ]) ++ pkgs.lib.optional _flags.readfile hsPkgs.haskell-src) ++ [
            hsPkgs.network
            hsPkgs.network-uri
          ];
        };
        exes = {
          "MagicHaskeller" = {
            depends  = ((([
              hsPkgs.MagicHaskeller
              hsPkgs.time
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.html
              hsPkgs.pretty
              hsPkgs.hashable
              hsPkgs.process
              hsPkgs.monad-par
              hsPkgs.transformers
              hsPkgs.abstract-par
              hsPkgs.ghc-paths
              hsPkgs.ghc
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional _flags.tfrandom hsPkgs.tf-random) ++ pkgs.lib.optional _flags.readfile hsPkgs.haskell-src) ++ [
              hsPkgs.network
              hsPkgs.network-uri
            ];
          };
          "MagicHaskeller.cgi" = {
            depends  = (([
              hsPkgs.time
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.html
              hsPkgs.pretty
              hsPkgs.hashable
              hsPkgs.MagicHaskeller
              hsPkgs.cgi
              hsPkgs.hint
              hsPkgs.extensible-exceptions
              hsPkgs.haskell-src
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.mueval) ++ pkgs.lib.optional _flags.tfrandom hsPkgs.tf-random) ++ [
              hsPkgs.network
              hsPkgs.network-uri
            ];
          };
        };
      };
    }