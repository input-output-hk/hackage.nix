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
      identifier = { name = "nm"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Network Manager, binding to libnm-glib.";
      description = "A binding to libnm-glib.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."nm-glib" or (errorHandler.sysDepError "nm-glib"))
          (pkgs."g" or (errorHandler.sysDepError "g"))
        ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
          (pkgconfPkgs."libnm-glib" or (errorHandler.pkgConfDepError "libnm-glib"))
        ];
        buildable = true;
      };
      exes = {
        "nm-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nm" or (errorHandler.buildDepError "nm"))
          ];
          buildable = true;
        };
      };
    };
  }