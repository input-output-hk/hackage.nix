{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      newer-ghc = true;
      ghc-612 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ghci-haskeline";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "";
      homepage = "http://code.haskell.org/~judah/ghci-haskeline";
      url = "";
      synopsis = "An implementation of ghci using the Haskeline line-input library.";
      description = "This package reimplements ghci using the GHC API and the Haskeline\npackage for line input in command-line programs.\n\nThis is an unofficial package; thus any bugs may be the fault of\nthe maintainer rather than of the GHC team.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghci-haskeline" = {
          depends  = if !flags.ghc-612
            then ([
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.bytestring)
              (hsPkgs.directory)
              (hsPkgs.filepath)
              (hsPkgs.process)
              (hsPkgs.mtl)
              (hsPkgs.haskeline)
              (hsPkgs.ghc-paths)
            ] ++ (if system.isWindows
              then [ (hsPkgs.Win32) ]
              else [ (hsPkgs.unix) ])) ++ [
              (hsPkgs.ghc)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.bytestring)
              (hsPkgs.directory)
              (hsPkgs.process)
              (hsPkgs.ghc)
              (hsPkgs.filepath)
              (hsPkgs.mtl)
              (hsPkgs.haskeline)
              (hsPkgs.ghc-paths)
            ] ++ (if system.isWindows
              then [ (hsPkgs.Win32) ]
              else [ (hsPkgs.unix) ]);
        };
      };
    };
  }