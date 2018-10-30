{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghcid";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>, jpmoresmau";
      homepage = "https://github.com/ndmitchell/ghcid#readme";
      url = "";
      synopsis = "GHCi based bare bones IDE";
      description = "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @ghcid --topmost --command=ghci@, where @--topmost@ makes the window on top of all others (Windows only) and @--command@ is the command to start GHCi on your project (defaults to @ghci@ if you have a @.ghci@ file, or else to @cabal repl@).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.process)
          (hsPkgs.cmdargs)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.terminal-size);
      };
      exes = {
        "ghcid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.process)
            (hsPkgs.cmdargs)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.terminal-size);
        };
      };
      tests = {
        "ghcid_test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.extra)
            (hsPkgs.cmdargs)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.terminal-size);
        };
      };
    };
  }