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
      specVersion = "1.8";
      identifier = { name = "sifflet-lib"; version = "1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2009-2011 Gregory D. Weber";
      maintainer = "\"gdweber\" ++ drop 3 \"abc@\" ++ \"iue.edu\"";
      author = "Gregory D. Weber";
      homepage = "http://mypage.iu.edu/~gdweber/software/sifflet/";
      url = "";
      synopsis = "Library of modules shared by sifflet and its\ntests and its exporters.";
      description = "Supporting modules for the Sifflet visual,\nfunctional programming language (Hackage 'sifflet' package).\nVersion 1.2.5: Compatibility with GHC 7.4.1.\nVersion 1.2.4: Dependencies revised for compatibility with HXT 9.1.\nVersion 1.2.3: Dependencies revised for compatibility with GHC 7.0\nand Haskell Platform 2011.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        libs = [
          (pkgs."gdk-x11-2.0" or (errorHandler.sysDepError "gdk-x11-2.0"))
          (pkgs."gtk-x11-2.0" or (errorHandler.sysDepError "gtk-x11-2.0"))
          ];
        buildable = true;
        };
      };
    }