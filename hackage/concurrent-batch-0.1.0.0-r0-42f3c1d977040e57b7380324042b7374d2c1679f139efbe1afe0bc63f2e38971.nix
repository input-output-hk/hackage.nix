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
      identifier = { name = "concurrent-batch"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Harpo Roeder";
      maintainer = "roederharpo@protonmail.ch";
      author = "Harpo Roeder";
      homepage = "https://github.com/harporoeder/concurrent-batch#readme";
      url = "";
      synopsis = "Concurrent batching queue based on STM with timeout.";
      description = "Please see the README on GitHub at <https://github.com/harporoeder/concurrent-batch#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }