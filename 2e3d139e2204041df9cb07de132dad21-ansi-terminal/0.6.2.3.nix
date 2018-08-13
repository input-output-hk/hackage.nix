{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      example = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ansi-terminal";
        version = "0.6.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Max Bolingbroke";
      homepage = "https://github.com/feuerbach/ansi-terminal";
      url = "";
      synopsis = "Simple ANSI terminal support, with Windows compatibility";
      description = "ANSI terminal support for Haskell: allows cursor movement, screen clearing, color output showing or hiding the cursor, and\nchanging the title. Compatible with Windows and those Unixes with ANSI terminals, but only GHC is supported as a compiler.";
      buildType = "Simple";
    };
    components = {
      "ansi-terminal" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        libs = pkgs.lib.optional (system.isWindows) (pkgs.kernel32);
      };
      exes = {
        "ansi-terminal-example" = {
          depends  = [
            (hsPkgs.base)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          libs = pkgs.lib.optional (system.isWindows) (pkgs.kernel32);
        };
      };
    };
  }