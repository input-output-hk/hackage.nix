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
      specVersion = "1.10";
      identifier = { name = "dmenu-search"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hannes Saffrich";
      maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
      author = "Hannes Saffrich";
      homepage = "https://github.com/m0rphism/haskell-dmenu-search";
      url = "";
      synopsis = "dmenu script for searching the web with customizable search engines.";
      description = "See README.md file.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "dmenu-search" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dmenu" or (errorHandler.buildDepError "dmenu"))
          ];
          buildable = true;
        };
      };
    };
  }