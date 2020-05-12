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
    flags = { use_xft = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "gsmenu"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/gsmenu";
      url = "";
      synopsis = "A visual generic menu";
      description = "Standalone port of XMonadContrib's GridSelect.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "gsmenu" = {
          depends = [
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."X11-xshape" or (errorHandler.buildDepError "X11-xshape"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."getflag" or (errorHandler.buildDepError "getflag"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (flags.use_xft) (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"));
          buildable = true;
          };
        };
      };
    }