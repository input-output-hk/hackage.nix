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
      identifier = { name = "snaplet-typed-sessions"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Typed session snaplets and continuation-based\nprogramming for the Snap web framework";
      description = "This package provides two Snaplets implementing\ntyped sessions in the Snap web framework, as either\nmemory-backed arbitrary types, or as client-side\ncookie-backed serializable types.  Unlike the\nstandard session snaplet, sessions can be of an\narbitrary type appropriate to the application.\nClient-side session data is encrypted for security,\nand sessions have a configurable timeout (optional\nfor the client-side back end).\n\nIn addition, a library is provided for a\ncontinuation-based programming model called\nSnap Dialogues.  Dialogues allow natural\nspecification of stateful interactions with the\nclient that span multiple requests.  Because the\nsession type is not serializable, this requires the\nmemory-backed session implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }