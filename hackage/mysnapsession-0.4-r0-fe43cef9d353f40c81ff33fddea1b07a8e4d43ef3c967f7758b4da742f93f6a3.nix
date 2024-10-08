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
      identifier = { name = "mysnapsession"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Sessions and continuations for Snap web apps";
      description = "This package provides two Snap extensions, implementing\nsessions as either memory-backed arbitrary types, or as\nclient-side cookie-backed serializable types.  The latter\nuses the @clientsession@ package to encrypt the cookie for\nsecurity.  In both extensions, sessions are protected from\nsession stealing by checking the source IP address, and\nhave a configurable timeout (optional for the cookie-\nbacked back end).  The session type is user-defined.\n\nIn addition, a library is provided for a continuation-\nbased programming model called dialogues, which allows\nnatural specification of stateful interactions with the\nclient that span multiple requests.  Because the session\ntype is not serializable, this requires the memory-backed\nimplementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        buildable = true;
      };
    };
  }