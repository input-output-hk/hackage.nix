{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { splitbase = true; example = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ansi-terminal"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/ansi-terminal";
      url = "";
      synopsis = "Simple ANSI terminal support, with Windows compatibility";
      description = "ANSI terminal support for Haskell: allows cursor movement, screen clearing, color output and showing or hiding the cursor.\nCompatible with Windows and those Unixes with ANSI terminals, but only GHC is supported as a compiler.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."msvcrt" or (errorHandler.sysDepError "msvcrt"))
        ];
        buildable = true;
      };
      exes = {
        "ansi-terminal-example" = {
          depends = (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
            (pkgs."msvcrt" or (errorHandler.sysDepError "msvcrt"))
          ];
          buildable = if !flags.example then false else true;
        };
      };
    };
  }