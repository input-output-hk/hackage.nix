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
      identifier = { name = "ObjectIO"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ka2_mail@yahoo.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        libs = [
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."gdi32" or (errorHandler.sysDepError "gdi32"))
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."comctl32" or (errorHandler.sysDepError "comctl32"))
          (pkgs."comdlg32" or (errorHandler.sysDepError "comdlg32"))
          (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
          (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
          (pkgs."winspool" or (errorHandler.sysDepError "winspool"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
        ];
        buildable = true;
      };
    };
  }