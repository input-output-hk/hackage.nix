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
      specVersion = "1.8";
      identifier = { name = "tagsoup-selection"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 siracusa";
      maintainer = "siracusa <pvnsrc@gmail.com>";
      author = "siracusa";
      homepage = "";
      url = "";
      synopsis = "Selecting subtrees from TagSoup's TagTrees using CSS selectors";
      description = "This package provides functions for parsing CSS3 selectors, a zipper for\nTagSoup's TagTree type, and functions for easily selecting subtrees from\ntag trees, e.g. by using CSS selectors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
        ];
        buildable = true;
      };
    };
  }