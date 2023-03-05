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
      identifier = { name = "memzero"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) Renzo Carbonara 2023";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/hs-memzero";
      url = "";
      synopsis = "Securely erase memory contents by writing zeros to it.";
      description = "Securely erase memory contents by writing zeros to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "c" = {
          depends = [
            (hsPkgs."memzero" or (errorHandler.buildDepError "memzero"))
            ];
          buildable = true;
          };
        "hs" = {
          depends = [
            (hsPkgs."memzero" or (errorHandler.buildDepError "memzero"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }