{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      terminfo = true;
      libiconv = false;
      legacy-encoding = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskeline";
          version = "0.7.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Judah Jacobson";
        maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
        author = "Judah Jacobson";
        homepage = "http://trac.haskell.org/haskeline";
        url = "";
        synopsis = "A command-line interface for user input, written in Haskell.";
        description = "Haskeline provides a user interface for line input in command-line\nprograms.  This library is similar in purpose to readline, but since\nit is written in Haskell it is (hopefully) more easily used in other\nHaskell programs.\n\nHaskeline runs both on POSIX-compatible systems and on Windows.";
        buildType = "Custom";
      };
      components = {
        haskeline = {
          depends  = (([
            hsPkgs.filepath
            hsPkgs.transformers
          ] ++ [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.bytestring
          ]) ++ pkgs.lib.optional (!(!_flags.legacy-encoding && compiler.isGhc)) hsPkgs.utf8-string) ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
            ] ++ pkgs.lib.optional _flags.terminfo hsPkgs.terminfo);
        };
      };
    }