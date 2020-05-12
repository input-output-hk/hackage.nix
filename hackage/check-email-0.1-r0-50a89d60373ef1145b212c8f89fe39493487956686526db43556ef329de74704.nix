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
      specVersion = "1.2";
      identifier = { name = "check-email"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Confirm whether an email is valid and probably existant.";
      description = "Confirm whether an email is valid and probably existant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          ];
        libs = [
          (pkgs."gd" or (errorHandler.sysDepError "gd"))
          (pkgs."png" or (errorHandler.sysDepError "png"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."jpeg" or (errorHandler.sysDepError "jpeg"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          (pkgs."fontconfig" or (errorHandler.sysDepError "fontconfig"))
          (pkgs."freetype" or (errorHandler.sysDepError "freetype"))
          (pkgs."expat" or (errorHandler.sysDepError "expat"))
          (pkgs."resolv" or (errorHandler.sysDepError "resolv"))
          ];
        buildable = true;
        };
      };
    }