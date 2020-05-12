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
      identifier = { name = "splay"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dramforever <dramforever@live.com>";
      author = "dramforever <dramforever@live.com>";
      homepage = "";
      url = "";
      synopsis = "(UNTESTED) Generic splay-based sequence representation";
      description = "/WARNING/: This package is /untested/ and /unstable/,\ndo not use except for testing.\nA general sequence representation with arbitary\nannotations, for use as a base for implementations\nof various collection types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }