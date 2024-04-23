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
      specVersion = "1.2";
      identifier = { name = "SegmentTree"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "scvalex@gmail.com";
      author = "Alexandru Scvortov";
      homepage = "http://scvalex.github.com/articles/SegmentTree.html";
      url = "";
      synopsis = "Data structure for O(log n) mconcats on list intervals";
      description = "The 'SegmentTree' data structure allows for logarithmic\ntime accumulations on preprocessed lists of 'Monoid's.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }