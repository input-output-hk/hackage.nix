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
      identifier = { name = "mysnapsession"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Memory-backed sessions and continuations for Snap web apps";
      description = "This package provides two Snap extensions.  The first is\nan in-memory session manager, which stores sessions for\neach client.  The session object type is user-defined.\nBecause sessions are memory-backed, sticky session routing\nis needed to use this extension with load balancing.\n\nThe second extension provides a continuation-based\nprogramming model called dialogues, which allow natural\nspecification of stateful interactions with the client\nthat span multiple requests.";
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