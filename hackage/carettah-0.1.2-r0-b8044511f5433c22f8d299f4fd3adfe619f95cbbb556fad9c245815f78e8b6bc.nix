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
      identifier = { name = "carettah"; version = "0.1.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "http://carettah.masterq.net/";
      url = "";
      synopsis = "A presentation tool writtten with Haskell.";
      description = "A presentation tool writtten with Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "carettah" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."hcwiid" or (errorHandler.buildDepError "hcwiid"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            ];
          buildable = true;
          };
        };
      };
    }