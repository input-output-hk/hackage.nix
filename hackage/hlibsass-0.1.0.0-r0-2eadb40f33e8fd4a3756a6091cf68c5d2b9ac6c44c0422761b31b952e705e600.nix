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
      specVersion = "1.10";
      identifier = { name = "hlibsass"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "fiolek94@gmail.com";
      author = "Jakub Fijałkowski <fiolek94@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libsass";
      description = "This package provides (very) low level bindings to libsass. It uses libsass\ncompiled to static library, so if you use this in your project, you have to\nlink your project with C++ runtime(which libsass does automatically - links\nwith libstd++).\nFor documentation visit <https://github.com/sass/libsass>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."sass" or (errorHandler.sysDepError "sass"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."sass" or (errorHandler.sysDepError "sass"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hlibsass" or (errorHandler.buildDepError "hlibsass"))
            ];
          buildable = true;
          };
        };
      };
    }