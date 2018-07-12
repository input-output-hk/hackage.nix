{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ghcid";
          version = "0.6.7";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2014-2017";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>, jpmoresmau";
        homepage = "https://github.com/ndmitchell/ghcid#readme";
        url = "";
        synopsis = "GHCi based bare bones IDE";
        description = "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @ghcid --topmost --command=ghci@, where @--topmost@ makes the window on top of all others (Windows only) and @--command@ is the command to start GHCi on your project (defaults to @ghci@ if you have a @.ghci@ file, or else to @cabal repl@).";
        buildType = "Simple";
      };
      components = {
        "ghcid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.extra
            hsPkgs.process
            hsPkgs.cmdargs
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
        exes = {
          "ghcid" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.fsnotify
              hsPkgs.extra
              hsPkgs.process
              hsPkgs.cmdargs
              hsPkgs.ansi-terminal
              hsPkgs.terminal-size
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
        tests = {
          "ghcid_test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.fsnotify
              hsPkgs.extra
              hsPkgs.ansi-terminal
              hsPkgs.terminal-size
              hsPkgs.cmdargs
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }