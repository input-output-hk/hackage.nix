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
      specVersion = "1.2";
      identifier = { name = "uglymemo"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lennart@augustsson.net";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "A simple (but internally ugly) memoization function.";
      description = "A simple (but internally ugly) memoization function.\n\n* New in 0.1.0.1: Make it exception safe.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }