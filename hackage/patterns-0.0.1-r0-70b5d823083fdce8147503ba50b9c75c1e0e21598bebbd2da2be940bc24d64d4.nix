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
      identifier = { name = "patterns"; version = "0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2012";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom/src/patterns";
      url = "";
      synopsis = "Common patterns in message-oriented applications";
      description = "There are common patterns often reused\n- or, in fact, reimplemented,\nin many distributed, message-oriented applications,\nsuch as Server\\/Client (a.k.a Request\\/Response),\nPublish\\/Subscribe,\nPipline (a.k.a. Push\\/Pull) and\nExclusive Pair (a.k.a. Peer-to-Peer).\nThe Patterns package implements those patterns based on zeromq.\nMore information on zeromq can be found at\n<http://www.zeromq.org>.\nMore examples and a test suite are available\non <http://github.com/toschoo/mom>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."zeromq-haskell" or (errorHandler.buildDepError "zeromq-haskell"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }