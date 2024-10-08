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
      specVersion = "1.8";
      identifier = { name = "ansi-terminal"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://bsp.lighthouseapp.com/projects/16235-hs-ansi-terminal/overview";
      url = "";
      synopsis = "Simple ANSI terminal support, with Windows compatibility";
      description = "ANSI terminal support for Haskell: allows cursor movement, screen clearing, color output and showing or hiding the cursor. Compatible with Windows and those Unixes with ANSI terminals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        buildable = true;
      };
      exes = {
        "ansi-terminal-example" = {
          depends = (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
          buildable = if !flags.example then false else true;
        };
      };
    };
  }