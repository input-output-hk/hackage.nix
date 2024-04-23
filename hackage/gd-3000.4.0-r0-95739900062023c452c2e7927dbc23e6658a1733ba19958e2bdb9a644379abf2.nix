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
    flags = { bytestring-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "gd"; version = "3000.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding to a subset of the GD graphics library";
      description = "This is a binding to a (currently very small) subset of\nthe GD graphics library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.bytestring-in-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."gd" or (errorHandler.sysDepError "gd"))
          (pkgs."png" or (errorHandler.sysDepError "png"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."jpeg" or (errorHandler.sysDepError "jpeg"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          (pkgs."fontconfig" or (errorHandler.sysDepError "fontconfig"))
          (pkgs."freetype" or (errorHandler.sysDepError "freetype"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          (pkgs."expat" or (errorHandler.sysDepError "expat"))
        ];
        buildable = true;
      };
    };
  }