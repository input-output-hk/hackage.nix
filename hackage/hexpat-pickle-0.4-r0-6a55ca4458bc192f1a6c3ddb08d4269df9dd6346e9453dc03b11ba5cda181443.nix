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
      identifier = { name = "hexpat-pickle"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh), Matthew Pocock (drdozer)";
      homepage = "http://code.haskell.org/hexpat-pickle/";
      url = "";
      synopsis = "XML picklers based on hexpat, source-code-similar to those of the HXT package";
      description = "A library of combinators that allows Haskell data structures to be pickled\n(serialized) to/from XML via the Tree datatype defined in the hexpat package.\nIt is source-code-similar to the pickling functionality of the HXT package,\nto ease the transition between the two libraries. This implementation is\nfaster but less complete than HXT.  Unlike some other picklers, it also supports\n/lazy unpickling/.\n\nThis package does not depend on HXT.\n\nDARCS repository:\n<http://code.haskell.org/hexpat-pickle/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
        ];
        buildable = true;
      };
    };
  }