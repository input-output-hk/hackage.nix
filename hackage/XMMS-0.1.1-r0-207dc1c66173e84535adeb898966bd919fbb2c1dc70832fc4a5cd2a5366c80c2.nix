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
      identifier = { name = "XMMS"; version = "0.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "waterlaz@gmail.com";
      author = "Vodolazskiy Evgeniy";
      homepage = "http://kawais.org.ua/XMMS/";
      url = "";
      synopsis = "XMMS2 client library.";
      description = "Provides the haskell client lib for XMMS2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        libs = [
          (pkgs."xmmsclient" or (errorHandler.sysDepError "xmmsclient"))
          (pkgs."xmmsclient-glib" or (errorHandler.sysDepError "xmmsclient-glib"))
          ];
        buildable = true;
        };
      };
    }