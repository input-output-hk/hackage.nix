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
      specVersion = "1.6";
      identifier = { name = "hexpat-iteratee"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Stephen Blackheath <http://blacksapphire.com/antispam/>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "Chunked XML parsing using iteratees";
      description = "This package provides chunked XML parsing using iteratees.  It is especially suited\nto implementing XML-based socket protocols, but is useful wherever lazy parsing is\nneeded on production systems where you can't tolerate the problems that come with\nHaskell's lazy I\\/O.\n\nThe XML is presented as a lazy tree, and is processed by a handler implemented using\na monad transformer called XMLT.  The resulting monad is suspended whenever it tries\nto read a part of the tree that hasn't been parsed yet, and continued as soon as it\nis available.\nThe resulting code looks and functions very much as if you were using lazy I\\/O,\nonly without the associated problems. Your handlers can have effects, yet they\ncome out in quite a functional style.\n\nBackground:  Haskell's lazy I\\/O can be problematic in some applications because it\ndoesn't handle I\\/O errors properly, and you can't predict when it will clean up its\nresources, which could result in file handles running out.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."List" or (errorHandler.buildDepError "List"))
        ];
        buildable = true;
      };
    };
  }