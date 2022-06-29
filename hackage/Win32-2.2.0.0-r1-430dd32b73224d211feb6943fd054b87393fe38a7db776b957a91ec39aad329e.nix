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
      specVersion = "1.0";
      identifier = { name = "Win32"; version = "2.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003";
      maintainer = "Esa Ilari Vuokko <ei@vuokko.info>";
      author = "Alastair Reid";
      homepage = "";
      url = "";
      synopsis = "A binding to part of the Win32 library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."gdi32" or (errorHandler.sysDepError "gdi32"))
          (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."advapi32" or (errorHandler.sysDepError "advapi32"))
          ];
        buildable = true;
        };
      };
    }