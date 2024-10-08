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
      identifier = { name = "simple-sessions"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/session-types";
      url = "";
      synopsis = "A simple implementation of session types";
      description = "This library is based on the session types implementation\nfrom \\\"Haskell Session Types with (Almost) No Class,\\\" from\nthe 2008 Haskell Symposium.  For a full-featured session types\nlibrary, see the sessions package\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/sessions>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."category-extras" or (errorHandler.buildDepError "category-extras"))
          (hsPkgs."synchronous-channels" or (errorHandler.buildDepError "synchronous-channels"))
        ];
        buildable = true;
      };
    };
  }