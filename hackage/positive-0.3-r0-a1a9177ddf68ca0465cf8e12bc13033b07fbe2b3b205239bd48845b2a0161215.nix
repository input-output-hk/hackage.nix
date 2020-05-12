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
      identifier = { name = "positive"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Positive numbers.";
      description = "Positive numbers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          ];
        buildable = true;
        };
      };
    }