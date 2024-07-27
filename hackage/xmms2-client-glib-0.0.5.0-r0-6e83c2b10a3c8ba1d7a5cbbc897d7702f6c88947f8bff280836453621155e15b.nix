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
      specVersion = "1.6";
      identifier = { name = "xmms2-client-glib"; version = "0.0.5.0"; };
      license = "LGPL-3.0-only";
      copyright = "(C) 2009-2010 Oleg Belozeorov";
      maintainer = "Oleg Belozeorov <upwawet@gmail.com>";
      author = "Oleg Belozeorov";
      homepage = "";
      url = "";
      synopsis = "An XMMS2 client library — GLib integration.";
      description = "This package provides an interface to the X-platform Music Multiplexing\nSystem 2 (http://xmms2.xmms.se) client GLib integration API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."xmms2-client" or (errorHandler.buildDepError "xmms2-client"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }