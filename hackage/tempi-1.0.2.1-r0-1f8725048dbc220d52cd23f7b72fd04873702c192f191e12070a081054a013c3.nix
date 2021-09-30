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
      identifier = { name = "tempi"; version = "1.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020- David Ogborn";
      maintainer = "David Ogborn <ogbornd@mcmaster.ca>";
      author = "David Ogborn";
      homepage = "http://github.com/dktr0/tempi";
      url = "";
      synopsis = "For representing musical tempi";
      description = "A Haskell library for representing musical tempi, with a basic representation consisting of three orthogonal components (frequency,time,count of elapsed cycles/beats). Basic purpose is to allow multiple Haskell-based live coding languages to share a common representation of tempo.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }