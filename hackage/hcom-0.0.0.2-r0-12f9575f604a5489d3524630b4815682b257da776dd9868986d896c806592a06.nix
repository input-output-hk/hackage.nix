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
      specVersion = "1.20";
      identifier = { name = "hcom"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Larsson <niklas@mm.st>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell COM support library";
      description = "Supporting for writing COM\\/Automation clients in Haskell, and for\npackaging up your Haskell code behind a COM-callable veneer.\n\nThis is an updated version of the original `com` library that works\nwith newer GHCs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (system.isWindows) [
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
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