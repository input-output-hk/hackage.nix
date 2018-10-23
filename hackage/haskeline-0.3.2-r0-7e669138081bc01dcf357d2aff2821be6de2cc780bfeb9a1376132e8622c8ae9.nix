{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskeline";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Judah Jacobson";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "Judah Jacobson";
      homepage = "http://trac.haskell.org/haskeline";
      url = "";
      synopsis = "A command-line interface for user input, written in Haskell.";
      description = "Haskeline provides a user interface for line input in command-line\nprograms.  This library is similar in purpose to readline, but since\nit is written in Haskell it is (hopefully) more easily used in other\nHaskell programs.\n\nHaskeline runs both on POSIX-compatible systems and on Windows\n(under MinGW).";
      buildType = "Simple";
    };
    components = {
      "haskeline" = {
        depends  = ([
          (hsPkgs.stm)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ] ++ (if flags.old-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ])) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.terminfo)
            (hsPkgs.unix)
          ]);
      };
    };
  }