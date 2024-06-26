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
      identifier = { name = "linux-kmod"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "© 2013 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "Linux kernel modules support";
      description = "Manipulate Linux kernel modules through the @libkmod@ library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libkmod" or (errorHandler.pkgConfDepError "libkmod"))
        ];
        buildable = true;
      };
    };
  }