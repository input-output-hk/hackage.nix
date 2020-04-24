{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "vision"; version = "0.0.5.0"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2010, 2011 Oleg Belozeorov";
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xmms2-client" or ((hsPkgs.pkgs-errors).buildDepError "xmms2-client"))
            (hsPkgs."xmms2-client-glib" or ((hsPkgs.pkgs-errors).buildDepError "xmms2-client-glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."PSQueue" or ((hsPkgs.pkgs-errors).buildDepError "PSQueue"))
            ];
          buildable = true;
          };
        };
      };
    }