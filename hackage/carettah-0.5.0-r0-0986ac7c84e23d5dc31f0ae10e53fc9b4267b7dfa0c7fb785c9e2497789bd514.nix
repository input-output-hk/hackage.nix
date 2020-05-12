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
      identifier = { name = "carettah"; version = "0.5.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "https://github.com/master-q/carettah";
      url = "";
      synopsis = "A presentation tool written with Haskell.";
      description = "A presentation tool written with Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "_carettah_main_" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
            (hsPkgs."gtk2hs-buildtools" or (errorHandler.buildDepError "gtk2hs-buildtools"))
            ];
          buildable = true;
          };
        "carettah" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }