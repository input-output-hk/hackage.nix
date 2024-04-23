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
      identifier = { name = "hexpat"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Evan Martin <martine@danga.com>, (c) 2008 Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Evan Martin, Stephen Blackheath";
      homepage = "http://code.haskell.org/hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "Expat (<http://expat.sourceforge.net/>) is a stream-oriented XML parser\nwritten in C.  It is known for being simple and fast.\n\nThere are already nice XML libraries in the Text.XML hierarchy.  The\nreason to use Expat is when speed is of concern.  From a benchmark\nthat compares getting the length of the root node of a HaXml tree\n(presumably forcing parsing the entire file) against running an Expat\nparser with a registered start node handler, Expat is about 12 times\nfaster.  This is not a fair benchmark; HaXml does a lot more than this\nExpat library.  But if Expat suffices, it is good for what it does.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."expat" or (errorHandler.sysDepError "expat")) ];
        buildable = true;
      };
    };
  }