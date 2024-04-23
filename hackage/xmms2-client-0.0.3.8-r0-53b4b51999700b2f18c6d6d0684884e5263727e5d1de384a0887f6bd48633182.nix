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
      identifier = { name = "xmms2-client"; version = "0.0.3.8"; };
      license = "LGPL-3.0-only";
      copyright = "(C) 2009-2010 Oleg Belozeorov";
      maintainer = "Oleg Belozeorov <upwawet@gmail.com>";
      author = "Oleg Belozeorov";
      homepage = "";
      url = "";
      synopsis = "An XMMS2 client library.";
      description = "This package provides an interface to the X-platform Music Multiplexing\nSystem 2 (http://xmms2.xmms.se) client API, thus allowing to write XMMS2\nclients in Haskell. It contains (nearly) 1-to-1 bindings to the XMMS2\nclient API and a higher level interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }