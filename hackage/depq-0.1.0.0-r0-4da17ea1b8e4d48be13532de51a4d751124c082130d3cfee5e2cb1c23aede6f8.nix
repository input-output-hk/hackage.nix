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
      specVersion = "1.10";
      identifier = { name = "depq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/depq";
      url = "";
      synopsis = "Double-ended priority queues";
      description = "Double-ended priority queues, for efficient retrieval of minimum and maximum elements in ordered collections of items.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
        ];
        buildable = true;
      };
    };
  }