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
      identifier = { name = "vision"; version = "0.0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2010 Oleg Belozeorov";
      maintainer = "Oleg Belozeorov <upwawet@gmail.com>";
      author = "Oleg Belozeorov";
      homepage = "";
      url = "";
      synopsis = "An XMMS2 client.";
      description = "Vision (for the Voice) is an X-platform Music Multiplexing System 2\n(http://xmms2.xmms.se) client aiming to eventually fit its author's\nviews on listening to music, managing a music library etc. Only the\ntime can tell what will come of that :]";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vision" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmms2-client" or (errorHandler.buildDepError "xmms2-client"))
            (hsPkgs."xmms2-client-glib" or (errorHandler.buildDepError "xmms2-client-glib"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
            ];
          buildable = true;
          };
        };
      };
    }