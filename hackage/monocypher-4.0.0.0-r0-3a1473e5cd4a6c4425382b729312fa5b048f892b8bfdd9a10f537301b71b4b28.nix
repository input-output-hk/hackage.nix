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
      identifier = { name = "monocypher"; version = "4.0.0.0"; };
      license = "(CC0-1.0 OR BSD-2-Clause)";
      copyright = "Copyright (c) Renzo Carbonara 2023";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/hs-monocypher";
      url = "";
      synopsis = "Low level bindings to the monocypher C library.";
      description = "Low level bindings to the monocypher C library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "c-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monocypher" or (errorHandler.buildDepError "monocypher"))
          ];
          buildable = true;
        };
        "c-tis-ci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monocypher" or (errorHandler.buildDepError "monocypher"))
          ];
          buildable = true;
        };
        "hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monocypher" or (errorHandler.buildDepError "monocypher"))
          ];
          buildable = true;
        };
      };
    };
  }