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
      specVersion = "2.0";
      identifier = { name = "tidal-vis"; version = "1.0.14"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and others, 2019";
      maintainer = "alex@slab.org";
      author = "Alex McLean";
      homepage = "http://yaxu.org/tidal/";
      url = "";
      synopsis = "Visual rendering for Tidal patterns and osc messages";
      description = "Tidal is a domain specific language for live coding pattern. This package allows colour patterns to be rendered as PDF or SVG files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
          (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
          (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
        ];
        buildable = true;
      };
      exes = {
        "tidal-vis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tidal-vis" or (errorHandler.buildDepError "tidal-vis"))
          ];
          buildable = true;
        };
      };
    };
  }