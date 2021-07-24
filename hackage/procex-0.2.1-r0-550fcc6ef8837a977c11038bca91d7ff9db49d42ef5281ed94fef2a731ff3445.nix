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
      specVersion = "2.4";
      identifier = { name = "procex"; version = "0.2.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "las@protonmail.ch";
      author = "Las Safin";
      homepage = "";
      url = "";
      synopsis = "Ergonomic process launching with extreme flexibility and speed";
      description = "procex is a library for launching unix processes, that DOES NOT wrap createProcess.\nIt interfaces directly with vfork and execve, and closes fds efficiently using\nthe new close_range Linux syscall (or close if not available).\nThe syntax for launching processes is clean, concise, and flexible, mimicking sh.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."procex" or (errorHandler.buildDepError "procex"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }