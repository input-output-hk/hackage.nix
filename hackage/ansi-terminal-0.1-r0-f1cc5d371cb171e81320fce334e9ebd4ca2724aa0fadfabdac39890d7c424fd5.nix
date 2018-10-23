{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      example = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ansi-terminal";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://bsp.lighthouseapp.com/projects/16235-ansi-terminal/overview";
      url = "";
      synopsis = "Simple ANSI terminal support, with Windows compatibility";
      description = "ANSI terminal support for Haskell: allows cursor movement, screen clearing, color output and showing or hiding the cursor";
      buildType = "Simple";
    };
    components = {
      "ansi-terminal" = {
        depends  = (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]) ++ [
          (hsPkgs.base)
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
      };
      exes = {
        "ansi-terminal-example" = {
          depends  = (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]) ++ [
            (hsPkgs.base)
          ];
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
        };
      };
    };
  }