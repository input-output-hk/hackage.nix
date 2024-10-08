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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "temporary"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2003-2006, Isaac Jones\n(c) 2005-2009, Duncan Coutts";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>";
      homepage = "http://www.github.com/batterseapower/temporary";
      url = "";
      synopsis = "Portable temporary file and directory support for Windows and Unix, based on code from Cabal";
      description = "The functions for creating temporary files and directories in the base library are quite limited. The unixutils\npackage contains some good ones, but they aren't portable to Windows.\nThis library just repackages the Cabal implementations of its own temporary file and folder functions so that\nyou can use them without linking against Cabal or depending on it being installed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
    };
  }