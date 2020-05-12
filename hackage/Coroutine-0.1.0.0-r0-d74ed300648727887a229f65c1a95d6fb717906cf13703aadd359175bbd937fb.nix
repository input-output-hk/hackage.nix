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
      specVersion = "1.2.1";
      identifier = { name = "Coroutine"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Ryan Ingram";
      maintainer = "Ryan Ingram <ryani.spam@gmail.com>";
      author = "Ryan Ingram <ryani.spam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-safe coroutines using lightweight session types.";
      description = "This package provides a pure interface for composing\nindependent functions that have a well-defined\ncommunication protocol.\nIt is loosely based on Jesse Tov's Haskell Symposium 2008\npaper \"Haskell Session Types with (almost) no class\"\n(http://www.ccs.neu.edu/home/tov/pubs/session08.html)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }