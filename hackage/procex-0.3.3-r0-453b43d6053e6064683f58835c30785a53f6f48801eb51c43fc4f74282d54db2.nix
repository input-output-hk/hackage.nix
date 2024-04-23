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
    flags = { develop = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "procex"; version = "0.3.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@las.rs";
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
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."procex" or (errorHandler.buildDepError "procex"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }