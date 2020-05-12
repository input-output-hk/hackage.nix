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
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "com"; version = "1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell COM support library";
      description = "COM + Automation libraries for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (system.isWindows) ([
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
          (pkgs."advapi32" or (errorHandler.sysDepError "advapi32"))
          ];
        buildable = if system.isWindows then true else false;
        };
      };
    }