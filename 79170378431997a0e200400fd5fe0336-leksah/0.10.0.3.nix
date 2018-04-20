{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      yi = false;
      dyre = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "leksah";
          version = "0.10.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "2007-2011 Juergen Nicklisch-Franken, Hamish Mackenzie";
        maintainer = "maintainer@leksah.org";
        author = "Juergen Nicklisch-Franken, Hamish Mackenzie";
        homepage = "http://www.leksah.org";
        url = "http://code.haskell.org/leksah";
        synopsis = "Haskell IDE written in Haskell";
        description = "An Integrated Development Environment for Haskell written in Haskell.";
        buildType = "Simple";
      };
      components = {
        leksah = {
          depends  = ((([
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.gtksourceview2
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process-leksah
            hsPkgs.regex-tdfa
            hsPkgs.regex-base
            hsPkgs.utf8-string
            hsPkgs.array
            hsPkgs.time
            hsPkgs.ltk
            hsPkgs.binary-shared
            hsPkgs.deepseq
            hsPkgs.hslogger
            hsPkgs.leksah-server
            hsPkgs.network
            hsPkgs.ghc
            hsPkgs.strict
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
            ])) ++ pkgs.lib.optional system.isOsx hsPkgs.ige-mac-integration) ++ pkgs.lib.optional _flags.yi hsPkgs.yi) ++ pkgs.lib.optional (_flags.yi && _flags.dyre) hsPkgs.dyre;
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        exes = {
          leksah = {
            depends  = ((((if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.unix
              ]) ++ pkgs.lib.optional system.isOsx hsPkgs.ige-mac-integration) ++ pkgs.lib.optional (compiler.isGhc && _flags.yi) hsPkgs.yi) ++ pkgs.lib.optional (compiler.isGhc && _flags.yi && _flags.dyre) hsPkgs.dyre) ++ (if compiler.isGhc
              then [
                hsPkgs.Cabal
                hsPkgs.base
                hsPkgs.binary
                hsPkgs.bytestring
                hsPkgs.containers
                hsPkgs.directory
                hsPkgs.filepath
                hsPkgs.glib
                hsPkgs.gtk
                hsPkgs.gtksourceview2
                hsPkgs.mtl
                hsPkgs.old-time
                hsPkgs.parsec
                hsPkgs.pretty
                hsPkgs.process-leksah
                hsPkgs.regex-tdfa
                hsPkgs.regex-base
                hsPkgs.utf8-string
                hsPkgs.array
                hsPkgs.time
                hsPkgs.ltk
                hsPkgs.binary-shared
                hsPkgs.deepseq
                hsPkgs.hslogger
                hsPkgs.leksah-server
                hsPkgs.network
                hsPkgs.ghc
                hsPkgs.strict
              ]
              else [
                hsPkgs.leksah
                hsPkgs.base
              ]);
            libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
          };
        };
      };
    }