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
      identifier = { name = "future"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <haskell@list.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/future";
      url = "";
      synopsis = "Supposed to mimics and enhance proposed C++ \"future\" features";
      description = "Similar to \"futures\" in C++ (with support for cotinuations). This differs from IVars in that the value is from an action in a spawned thread, and exceptions are caught and returned.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }