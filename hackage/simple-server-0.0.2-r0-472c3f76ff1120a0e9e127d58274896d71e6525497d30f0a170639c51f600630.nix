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
      identifier = { name = "simple-server"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jcollard@unm.edu";
      author = "Joseph Collard";
      homepage = "";
      url = "";
      synopsis = "Simple Server interface";
      description = "This library provides a very simple interface for creating a server that sends and recieves ByteString messages and attempts to remove concurrency so the programmer can focus on the functionality of the server. A simple ChatServer example is available in the Examples module";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          ];
        buildable = true;
        };
      };
    }